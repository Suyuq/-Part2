-- phpMyAdmin SQL Dump
-- version 4.0.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 14, 2019 at 11:26 AM
-- Server version: 5.6.37
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sell`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL COMMENT '评论者姓名',
  `openid` varchar(64) NOT NULL COMMENT '评论者姓名',
  `content` text NOT NULL COMMENT '评论内容',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '评论时间',
  `avatar_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论信息表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE IF NOT EXISTS `order_detail` (
  `detail_id` varchar(32) NOT NULL,
  `order_id` varchar(32) NOT NULL,
  `product_id` varchar(32) NOT NULL,
  `product_name` varchar(64) NOT NULL COMMENT '商品名称',
  `product_price` decimal(8,2) NOT NULL COMMENT '当前价格,单位分',
  `product_quantity` int(11) NOT NULL COMMENT '数量',
  `product_icon` varchar(512) DEFAULT NULL COMMENT '小图',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`detail_id`),
  KEY `idx_order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单商品';

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`detail_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_quantity`, `product_icon`, `create_time`, `update_time`) VALUES
('1573392490005815821', '1573392490003175776', '1573390216859890934', '黑米粥', '5.00', 5, 'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=152161077,3297352167&fm=85&app=57&f=JPEG?w=121&h=75&s=23A2D60494526674161AEA6C0300B05B', '2019-11-10 13:28:10', '2019-11-10 13:28:10'),
('1573392661138317493', '1573392661136415848', '1573390216859890934', '黑米粥', '5.00', 6, 'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=152161077,3297352167&fm=85&app=57&f=JPEG?w=121&h=75&s=23A2D60494526674161AEA6C0300B05B', '2019-11-10 13:31:01', '2019-11-10 13:31:01'),
('1573392838959922812', '1573392838957739840', '1573390216859890934', '黑米粥', '5.00', 2, 'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=152161077,3297352167&fm=85&app=57&f=JPEG?w=121&h=75&s=23A2D60494526674161AEA6C0300B05B', '2019-11-10 13:33:58', '2019-11-10 13:33:58'),
('1573392993930440713', '1573392993928741260', '1573390216859890934', '黑米粥', '5.00', 10, 'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=152161077,3297352167&fm=85&app=57&f=JPEG?w=121&h=75&s=23A2D60494526674161AEA6C0300B05B', '2019-11-10 13:36:33', '2019-11-10 13:36:33'),
('1573393043471743588', '1573393043468835017', '1573390216859890934', '黑米粥', '5.00', 3, 'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=152161077,3297352167&fm=85&app=57&f=JPEG?w=121&h=75&s=23A2D60494526674161AEA6C0300B05B', '2019-11-10 13:37:23', '2019-11-10 13:37:23'),
('1573393627312351034', '1573393627310715883', '1573390216859890934', '黑米粥', '5.00', 3, 'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=152161077,3297352167&fm=85&app=57&f=JPEG?w=121&h=75&s=23A2D60494526674161AEA6C0300B05B', '2019-11-10 13:47:07', '2019-11-10 13:47:07'),
('1573393712778151638', '1573393712776642101', '1573390216859890934', '黑米粥', '5.00', 1, 'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=152161077,3297352167&fm=85&app=57&f=JPEG?w=121&h=75&s=23A2D60494526674161AEA6C0300B05B', '2019-11-10 13:48:32', '2019-11-10 13:48:32'),
('1573393812283769085', '1573393812282564335', '1573390216859890934', '黑米粥', '5.00', 9, 'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=152161077,3297352167&fm=85&app=57&f=JPEG?w=121&h=75&s=23A2D60494526674161AEA6C0300B05B', '2019-11-10 13:50:12', '2019-11-10 13:50:12'),
('1573394735071948414', '1573394735058417950', '1573390216859890934', '黑米粥', '5.00', 3, 'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=152161077,3297352167&fm=85&app=57&f=JPEG?w=121&h=75&s=23A2D60494526674161AEA6C0300B05B', '2019-11-10 14:05:35', '2019-11-10 14:05:35'),
('1573395736690630818', '1573395736658594372', '1573390216859890934', '黑米粥', '5.00', 6, 'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=152161077,3297352167&fm=85&app=57&f=JPEG?w=121&h=75&s=23A2D60494526674161AEA6C0300B05B', '2019-11-10 14:22:16', '2019-11-10 14:22:16'),
('1573697238328932985', '1573697238317328044', '1573390216859890934', '黑米粥', '5.00', 4, 'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=152161077,3297352167&fm=85&app=57&f=JPEG?w=121&h=75&s=23A2D60494526674161AEA6C0300B05B', '2019-11-14 02:07:18', '2019-11-14 02:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `order_master`
--

CREATE TABLE IF NOT EXISTS `order_master` (
  `order_id` varchar(32) NOT NULL,
  `buyer_name` varchar(32) NOT NULL COMMENT '买家名字',
  `buyer_phone` varchar(32) NOT NULL COMMENT '买家电话',
  `buyer_address` varchar(128) NOT NULL COMMENT '买家桌号',
  `buyer_openid` varchar(64) NOT NULL COMMENT '买家微信openid',
  `order_amount` decimal(8,2) NOT NULL COMMENT '订单总金额',
  `order_status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '订单状态, 默认为新下单',
  `pay_status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '支付状态, 默认未支付',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`order_id`),
  KEY `idx_buyer_openid` (`buyer_openid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

--
-- Dumping data for table `order_master`
--

INSERT INTO `order_master` (`order_id`, `buyer_name`, `buyer_phone`, `buyer_address`, `buyer_openid`, `order_amount`, `order_status`, `pay_status`, `create_time`, `update_time`) VALUES
('1573392490003175776', '胡美香', '15805849785', '1号桌', 'null', '25.00', 1, 0, '2019-11-10 13:28:10', '2019-11-10 13:28:10'),
('1573392661136415848', '胡美香', '15805849785', '1号桌', 'null', '30.00', 1, 0, '2019-11-10 13:31:01', '2019-11-10 13:31:01'),
('1573392838957739840', '编程小石头', '15805849785', '1号桌', 'o3DoL0WEdzcJ20AVJg1crP96gbjM', '10.00', 1, 0, '2019-11-10 13:33:58', '2019-11-10 13:33:58'),
('1573392993928741260', '胡美香', '15805849785', '1号桌', 'null', '50.00', 1, 0, '2019-11-10 13:36:33', '2019-11-10 13:36:33'),
('1573393043468835017', '胡美香', '15805849785', '1号桌', 'null', '15.00', 1, 0, '2019-11-10 13:37:23', '2019-11-10 13:37:23'),
('1573393627310715883', '胡美香', '15805849785', '1号桌', 'null', '15.00', 1, 0, '2019-11-10 13:47:07', '2019-11-10 13:47:07'),
('1573393712776642101', '胡美香', '15805849785', '1号桌', 'o46Mo44hvwDSMy7gj1j4c3a_WOGk', '5.00', 1, 0, '2019-11-10 13:48:32', '2019-11-10 13:48:32'),
('1573393812282564335', '胡美香', '15805849785', '1号桌', 'o46Mo44hvwDSMy7gj1j4c3a_WOGk', '45.00', 1, 0, '2019-11-10 13:50:12', '2019-11-10 13:50:12'),
('1573394735058417950', '胡美香', '15805849785', '1号桌', 'o46Mo44hvwDSMy7gj1j4c3a_WOGk', '15.00', 1, 0, '2019-11-10 14:05:35', '2019-11-10 14:05:35'),
('1573395736658594372', '胡美香', '15805849785', '1号桌', 'o46Mo44hvwDSMy7gj1j4c3a_WOGk', '30.00', 1, 0, '2019-11-10 14:22:16', '2019-11-10 14:22:16'),
('1573697238317328044', '胡美香', '15805849785', '1号桌', 'o46Mo44hvwDSMy7gj1j4c3a_WOGk', '20.00', 1, 0, '2019-11-14 02:07:18', '2019-11-14 02:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `picture`
--

CREATE TABLE IF NOT EXISTS `picture` (
  `pic_id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_url` varchar(255) NOT NULL,
  `pic_message` varchar(64) NOT NULL,
  `pic_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`pic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='轮播图表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE IF NOT EXISTS `product_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(64) NOT NULL COMMENT '类目名字',
  `category_type` int(11) NOT NULL COMMENT '类目编号',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='类目表' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`category_id`, `category_name`, `category_type`, `create_time`, `update_time`) VALUES
(1, '午餐', 1, '2019-11-10 12:45:44', '2019-11-10 12:45:44');

-- --------------------------------------------------------

--
-- Table structure for table `product_info`
--

CREATE TABLE IF NOT EXISTS `product_info` (
  `product_id` varchar(32) NOT NULL,
  `product_name` varchar(64) NOT NULL COMMENT '商品名称',
  `product_price` decimal(8,2) NOT NULL COMMENT '单价',
  `product_stock` int(11) NOT NULL COMMENT '库存',
  `product_description` varchar(64) DEFAULT NULL COMMENT '描述',
  `product_icon` varchar(512) DEFAULT NULL COMMENT '小图',
  `product_status` tinyint(3) DEFAULT '0' COMMENT '商品状态,0正常1下架',
  `category_type` int(11) NOT NULL COMMENT '类目编号',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品表';

--
-- Dumping data for table `product_info`
--

INSERT INTO `product_info` (`product_id`, `product_name`, `product_price`, `product_stock`, `product_description`, `product_icon`, `product_status`, `category_type`, `create_time`, `update_time`) VALUES
('1573389957008425047', '南瓜粥', '5.00', 1000, '', '', 1, 1, '2019-11-10 12:45:57', '2019-11-10 12:50:21'),
('1573390216859890934', '黑米粥', '5.00', 48, '', 'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=152161077,3297352167&fm=85&app=57&f=JPEG?w=121&h=75&s=23A2D60494526674161AEA6C0300B05B', 0, 1, '2019-11-10 12:50:16', '2019-11-14 02:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `seller_info`
--

CREATE TABLE IF NOT EXISTS `seller_info` (
  `seller_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `phone` varchar(64) NOT NULL COMMENT '用户手机号',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`seller_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='卖家信息表' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `seller_info`
--

INSERT INTO `seller_info` (`seller_id`, `username`, `password`, `phone`, `create_time`, `update_time`) VALUES
(1, '编程小石头', '2501902696', '2501902696', '2019-11-05 13:33:23', '2019-11-05 13:33:23');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `openid` varchar(64) NOT NULL COMMENT '微信openid',
  `zhuohao` varchar(64) DEFAULT NULL COMMENT '桌号',
  `renshu` varchar(64) DEFAULT NULL COMMENT '就餐人数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户信息表' AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
