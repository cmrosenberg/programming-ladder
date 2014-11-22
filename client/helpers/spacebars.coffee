UI.registerHelper 'currentIsAdmin', ->
  isAdmin Meteor.user()

UI.registerHelper 'activeClassByRoute', (route) ->
  currentRoute = Router.current()
  if (!currentRoute)
    return ''
  regex = new RegExp(route, "i")
  if regex.test(currentRoute.route.name)
    return 'active'

UI.registerHelper 'formatDate', (date) ->
  if (moment().isSame(date, 'day'))
    moment(date).format('HH:mm')
  else
    moment(date).format('MMM D')

UI.registerHelper 'dateFormat', (date, dateFormat) ->
  if date then moment(date).format(dateFormat)

UI.registerHelper 'isDateBeforeNow', (date) ->
  return date > Date.now()

UI.registerHelper 'isDateAfterNow', (date) ->
  return date < Date.now()