BackboneHackaton.Models.PollItem = Backbone.RelationalModel.extend


class BackboneHackaton.Collections.PollItemsCollection extends Backbone.Collection
  model: BackboneHackaton.Models.PollItem
  url: '/poll/items'
