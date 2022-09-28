*** Variables ***
# Browser info
${tecDigital}=                  https://tecdigital.tec.ac.cr/register/?return_url=/dotlrn/index
${browser}=                     Chrome
${searchBar}=                   q
${errorMessageContainer}=       //*[@id="new-login"]/div[5]/div
${errorMessage}=                La contraseña ingresada es incorrecta.

# Buttons
${login}=                       //*[@id="new-login"]/div[4]/div/button
${menuIcon}=                    //*[@id="td_menu_responsive_toggle"]/i
${showCourses}=                 //*[@id="dotlrn-main-dotlrn_class_instance"]/span
${sendEmail}=                   //*[@id="btnEnviarEmail"]

# Href texts
${logout}=                      //*[@id="menu-left-content"]/nav/li[6]/a
${sqa}=                         //*[@id="tree-dotlrn_class_instance"]/li[1]/ul/li[1]/a
${teacherEmail}=                //*[@id="main-content"]/div/div[1]/div[2]/ul/li/a[2]

# Email form fields
${bodyField}=                   //*[@id="msjcuerpo"]/div[1]
${subjectField}=                //*[@id="msj_asunto"]

# Params
${empty}=
${subject}=                     La automatización no es un juego
${body}=                        Hola profe, \nEste es un mensaje generado automáticamente gracias a Robot framework. :D\nSaludos!
