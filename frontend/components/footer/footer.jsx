import React from "react";

const Footer = () => (
  <div className="home-page-footer">
    <div className="footer-categories">
      <div className="footer-content-container">
        <div className="footer-category-title">About the Developer</div>
        <a href="https://joshua-arriola.com/" target="_blank" className="footer-about-developer">About Joshua Arriola</a>
        <a href="https://github.com/JPArriola" target="_blank" className="footer-about-developer">GitHub</a>
        <a href="https://www.linkedin.com/in/joshuaarriola/" target="_blank" className="footer-about-developer">My Experience</a>
        <a href="https://angel.co/joshua-arriola" target="_blank" className="footer-about-developer">AngelList</a>
        <a href="mailto:joshuapatrickarriola@gmail.com" className="footer-about-developer">Email Me!</a >
      </div>
      <div className="footer-content-container">
        <div className="footer-category-title">Discover</div>
        <a className="footer-category-content">Yulp Project Cost Guides</a>
        <a className="footer-category-content">Collections</a>
        <a className="footer-category-content">Talk</a>
        <a className="footer-category-content">Events</a>
        <a className="footer-category-content">The Local Yulp</a>
        <a className="footer-category-content">Yulp Blog</a>
        <a className="footer-category-content">Support</a>
        <a className="footer-category-content">Yulp Mobile</a>
        <a className="footer-category-content">Developers</a>
        <a className="footer-category-content">RSS</a>
      </div>
      <div className="footer-content-container">
        <div className="footer-category-title">Yelp for Business Owners</div>
        <a className="footer-category-content">Claim your Business Page</a>
        <a className="footer-category-content">Advertise on Yulp</a>
        <a className="footer-category-content">Yulp Reservations</a>
        <a className="footer-category-content">Yulp WiFi</a>
        <a className="footer-category-content">Yulp Nowait</a>
        <a className="footer-category-content">Business Success Stories</a>
        <a className="footer-category-content">Business Support</a>
        <a className="footer-category-content">Yulp Blog for Business Owners</a>
      </div>
      <div>
        <div className="footer-content-container">
          <div className="footer-category-title">Languages</div>
          <a className="footer-category-content">English</a>
        </div>
        <div className="footer-content-container">
          <div className="footer-category-title">Countries</div>
          <a className="footer-category-content">United States</a>
        </div>
      </div>
    </div>
    <div className="footer-image"/>
  </div>
);

export default Footer;