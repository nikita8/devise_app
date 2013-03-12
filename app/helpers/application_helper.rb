module ApplicationHelper
  def fancybox_css
    stylesheet_link_tag("/fancybox/jquery.fancybox-1.3.1.css")
  end

  def fancybox_js
    [javascript_include_tag("/fancybox/jquery.fancybox-1.3.1.pack.js"),
    javascript_include_tag("/fancybox/jquery.easing-1.3.pack.js")].join("\n").html_safe
  end

  def fancybox_includes
    [fancybox_css, fancybox_js].join("\n").html_safe
  end

end
