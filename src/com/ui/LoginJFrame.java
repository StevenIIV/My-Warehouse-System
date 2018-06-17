package com.ui;

import com.service.UserService;
import com.ui.tools.ImagePanel;
import org.jb2011.lnf.beautyeye.ch3_button.BEButtonUI;


import java.awt.*;
import java.awt.event.*;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;

import javax.imageio.ImageIO;
import javax.swing.*;

public class LoginJFrame extends JFrame implements MouseListener, FocusListener {

	// 全局的位置变量，用于表示鼠标在窗口上的位置
	static Point origin = new Point();

	// 定义全局组件
	JTextField username = new JTextField(20);
	JPasswordField password = new JPasswordField(20);
	ImagePanel backgroundPanel = null;
	JButton button_minimize, button_close, button_login, button_reset;

	public LoginJFrame() {
		
		Image backgrounImage = null;
		try {
			backgrounImage = ImageIO.read(new File("image/loginbackground.png"));
			Image imgae = ImageIO.read(new File("image/logo.png"));
			this.setIconImage(imgae);
		} catch (IOException e) {
			e.printStackTrace();
		}
		// 窗口背景面板
		backgroundPanel = new ImagePanel(backgrounImage);
		backgroundPanel.setLayout(null);

		username.setBounds(320, 222, 253, 53);
		username.addFocusListener(this);
		username.setForeground(Color.GRAY);
		username.setText("Username");
		username.setFont(new Font("微软雅黑", Font.PLAIN, 17));
		username.setBorder(BorderFactory.createEmptyBorder(10,10,10,10));

		password.setBounds(320, 295, 253, 53);
		password.addFocusListener(this);
		password.setForeground(Color.GRAY);
		password.setText("Password");
		password.setFont(new Font("微软雅黑", Font.PLAIN, 17));
		password.setEchoChar('\0');
		password.setBorder(BorderFactory.createEmptyBorder(10,10,10,10));

		button_login = new JButton("登录");
		button_login.setBounds(280, 375, 100, 40);
		button_login.setUI(new BEButtonUI().setNormalColor(BEButtonUI.NormalColor.lightBlue));
		button_login.setForeground(Color.white);
		button_login.addMouseListener(this);

		button_reset = new JButton("重置");
		button_reset.setBounds(425, 375, 100, 40);
		button_reset.setUI(new BEButtonUI().setNormalColor(BEButtonUI.NormalColor.red));
		button_reset.setForeground(Color.white);
		button_reset.addMouseListener(this);

		backgroundPanel.add(username);
		backgroundPanel.add(password);
		backgroundPanel.add(button_login);
		backgroundPanel.add(button_reset);

		this.add(backgroundPanel);
		this.setTitle("  销售管理系统");
		this.setSize(830, 530);
		this.setVisible(true);
		this.requestFocus();
		this.setLocationRelativeTo(null);
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		this.setResizable(false);
	}

	// 鼠标点击事件
	@Override
	public void mouseClicked(MouseEvent e) {
		if (e.getSource() == button_login) {
			if ("Username".equals(username.getText())) {
				JOptionPane.showMessageDialog(null, "用户名不能为空");
			}
			else if ("Password".equals(password.getText())) {
				JOptionPane.showMessageDialog(null, "密码不能为空");
			}
			else{
				UserService userService=new UserService();
				try {
					if(userService.checkUser(username.getText().toString(),password.getText().toString())){
						setVisible(false);
						new MainFrame();
					}
					else{
						JOptionPane.showMessageDialog(null, "用户名密码有误");
					}
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}
		}
		else if (e.getSource() == button_reset) {
			username.setText("Username");
			password.setText("Password");
			password.setEchoChar('\0');
		}

	}

	@Override
	public void mouseEntered(MouseEvent arg0) {
		// TODO Auto-generated method stub

	}

	@Override
	public void mouseExited(MouseEvent arg0) {
		// TODO Auto-generated method stub

	}

	@Override
	public void mousePressed(MouseEvent arg0) {
		// TODO Auto-generated method stub

	}

	@Override
	public void mouseReleased(MouseEvent arg0) {
		// TODO Auto-generated method stub

	}

	// 聚焦事件
	@Override
	public void focusGained(FocusEvent e) {
		if (e.getSource() == username) {
			if (username.getText().equals("Username")) {
				username.setForeground(Color.BLACK);
				username.setText("");
			}
		} else if (e.getSource() == password) {
			if (password.getText().equals("Password")) {
				password.setForeground(Color.BLACK);
				password.setText("");
				password.setEchoChar('*');
			}
		}

	}

	// 失焦事件
	@Override
	public void focusLost(FocusEvent e) {
		if (e.getSource() == username) {
			if (username.getText().equals("")) {
				username.setForeground(Color.GRAY);
				username.setText("Username");
			}
		} else if (e.getSource() == password) {
			if (password.getText().equals("")) {
				password.setForeground(Color.GRAY);
				password.setText("Password");
				password.setEchoChar('\0');
			}
		}
	}

	
}