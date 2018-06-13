package com.dao;

import java.sql.*;
import javax.swing.*;
import javax.swing.tree.DefaultMutableTreeNode;
import java.awt.*;
import java.awt.event.*;
import java.util.*;

public class ShowTree
{
    public static void main(String[] args) throws Exception {
        Tree_View myTree;
        myTree=new Tree_View();
        /*try
        {myTree.CreateContext();}
        catch (Exception err)
        { System.err.println( "连接数据库异常" );
            System.exit( 1 );  // terminate program
        }
        try
        {myTree.ShowContent();}
        catch(Exception err )
        {
            System.exit(1);
        }*/
        myTree.CreateContext();
        myTree.ShowContent();
        myTree.setVisible(true);
    }
}


class Tree_View extends JFrame
{
    String DBDriver="com.mysql.jdbc.Driver";
    String connectionStr="jdbc:mysql://localhost:3306/ck?useUnicode=true&characterEncoding=utf-8";
    Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;

    public Tree_View()
    {super("目录树演示");
        setSize( 500, 500 );
        JPanel topPanel = new JPanel();
        topPanel.setLayout( new BorderLayout() );
        //显示Form
    }

    public void CreateContext()  throws Exception
    {
        try{
            Class.forName(DBDriver);	 //加载驱动器
            con=DriverManager.getConnection(connectionStr,"root","123456");
            stmt=con.createStatement();   //创建Statement对象
        }
        //捕获加载驱动程序异常
        catch ( ClassNotFoundException cnfex )
        {
            System.err.println(
                    "装载 JDBC/ODBC 驱动程序失败。" );
            cnfex.printStackTrace();
            System.exit( 1 );  // terminate program
        }
        //捕获连接数据库异常
        catch ( SQLException sqlex )
        {
            System.err.println( "无法连接数据库" );
            sqlex.printStackTrace();
            System.exit( 1 );  // terminate program
        }
    }

    public void ShowContent()  throws Exception
    {
        rs=stmt.executeQuery("select * from clggb order by hh");  //查询表
        Container c = getContentPane();
        c.setLayout( new BorderLayout() );
        c.add(createTree());
    }

    int getDotCount(String hhStr)
    {
        return hhStr.length()/2;
    }

    public JTree createTree() throws SQLException {
        DefaultMutableTreeNode[] aNode=new DefaultMutableTreeNode[7];
        String line ="";
        int dotCount=0;
        while(rs.next())         //显示所有记录
        {
            line=rs.getString("hh");

            dotCount=getDotCount(line);
            if (dotCount==0)
                aNode[0]=new DefaultMutableTreeNode(rs.getString("hh")+":"+rs.getString("mc"));
            else
            {
                aNode[dotCount]=new DefaultMutableTreeNode(rs.getString("hh")+":"+rs.getString("mc"));
                aNode[dotCount-1].add(aNode[dotCount]);
            }
        }

        JTree tree = new JTree(aNode[0]) {
            public Insets getInsets() {
                return new Insets(5,5,5,5);
            }
        };

        tree.setEditable(true);
        return(tree);
    }

    public void CloseContext()  throws Exception
    {
        stmt.close();    //关闭语句
        con.close();   //关闭连接
    }
}

