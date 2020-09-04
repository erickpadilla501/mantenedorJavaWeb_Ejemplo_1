package web;

import datos.ClienteDaoJDBC;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.Cliente;

@WebServlet("/ServletControl")

public class ServletControl extends HttpServlet {

    //GET
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("accion");

        if (accion != null) {

            switch (accion) {
                case "redLogin":
                    this.redLogin(request, response);
                    break;

                case "redMenu":
                    this.redMenu(request, response);
                    break;

                case "listado":
                    this.listadoCliente(request, response);
                    break;

                case "listadoEliminar":
                    this.listadoEliminarCliente(request, response);
                    break;

                case "eliminar":
                    this.eliminarCliente(request, response);
                    break;

                default:
                    this.redLogin(request, response);

            }

        } else {
            this.redLogin(request, response);
        }

    }

    protected void redLogin(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("login.jsp");
    }

    protected void redMenu(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("menu.jsp");
    }

    private void listadoCliente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Cliente> clientes = new ClienteDaoJDBC().listar();
        //System.out.println("clientes = "+ clientes);
        HttpSession sesion = request.getSession();
        sesion.setAttribute("clientes", clientes);
        request.getRequestDispatcher("listado.jsp").forward(request, response);

    }

    //doPost
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("accion");

        if (accion != null) {

            switch (accion) {
                case "redLogin":
                    this.redLogin(request, response);
                    break;

                case "ingresar":
                    this.insertarCliente(request, response);
                    break;

                case "modificar":
                    this.modificarCliente(request, response);
                    break;

                case "redMenu":
                    this.redMenu(request, response);
                    break;

                default:
                    this.redLogin(request, response);

            }

        } else {
            this.redLogin(request, response);
        }

    }

    private void insertarCliente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //Datos del formulario
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String email = request.getParameter("email");
        String telefono = request.getParameter("telefono");
        double saldo = 0;

        //Crear Objeto
        Cliente cliente = new Cliente(nombre, apellido, email, telefono, saldo);

        //Agregamos el objeto a la BD
        int registrosModificados = new ClienteDaoJDBC().insertar(cliente);
        System.out.println(registrosModificados);
        this.listadoCliente(request, response);
    }

    private void listadoEliminarCliente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Cliente> clientes = new ClienteDaoJDBC().listar();
        //
        HttpSession sesion = request.getSession();
        sesion.setAttribute("clientes", clientes);
        request.getRequestDispatcher("eliminar.jsp").forward(request, response);

    }

    private void eliminarCliente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int idCliente = Integer.parseInt(request.getParameter("idCliente"));
        Cliente cliente = new Cliente(idCliente);
        int registrosModificados = new ClienteDaoJDBC().eliminar(cliente);
        System.out.println("registrosModificados = " + registrosModificados);
        this.listadoEliminarCliente(request, response);

    }

    private void modificarCliente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //Datos del formulario
        int idCliente = Integer.parseInt(request.getParameter("idCliente"));
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String email = request.getParameter("email");
        String telefono = request.getParameter("telefono");

        //Crear Objeto
        Cliente cliente = new Cliente(idCliente, nombre, apellido, email, telefono, 0);
         int registrosModificados = new ClienteDaoJDBC().actualizar(cliente);
                System.out.println("registrosModificados = " + registrosModificados);
        this.listadoEliminarCliente(request, response);
        response.sendRedirect("eliminar.jsp");
    }
    
    public int suma(int num1, int num2) {
        return num1 + num2;
    }

}
