install.packages('rsconnect')

rsconnect::setAccountInfo(name='chriscanthom',
                          token='F686D5E936093BA71DA8AE79C421B4A1',
                          secret='edqp/0t63GnCFSFvpKuM+K9zSbNhkOIPTmQlykjU')

library(rsconnect)
##add app name one made##
rsconnect::deployApp('path/to/your/app')
