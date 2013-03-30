BackboneHackaton.Models.Poll = Backbone.Model.extend
  paramRoot: 'poll'


  relations: [{
    type: Backbone.HasMany
    key: 'items'
    relatedModel: 'BackboneHackaton.Models.PollItem'
    collectionType: 'BackboneHackaton.Collections.PollItemsCollection'
    reverseRelation:
      key: 'poll_id'
      includeInJSON: 'id'
  }]

class BackboneHackaton.Collections.PollsCollection extends Backbone.Collection
  model: BackboneHackaton.Models.Poll
  url: '/'
