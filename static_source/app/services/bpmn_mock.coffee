
'use strict'

angular
.module('angular-bpmn')
.service 'bpmnMock', () ->
  {
    scheme1: {
      name: 'Simply bpmn scheme'
      description: ''
      objects: [
        {
          id: 1
          type:
            name: 'event'
            start:
              0:
                0: true
          position:
            top: 80
            left: 50
          status: ''
          error: ''
          title: 'start event'
          description: ''
        }
        {
          id: 2
          type:
            name: 'task'
            status: ''
            action: ''
          position:
            top: 60
            left: 260
          status: ''
          error: ''
          title: 'task'
          description: ''
        }
        {
          id: 3
          type:
            name: 'event'
            end:
              simply:
                top_level: true
          position:
            top: 80
            left: 530
          status: ''
          error: ''
          title: 'end event'
          description: ''
        }
      ]
      connectors: [
        {
          id: 1
          start:
            object: 1
            point: 1
          end:
            object: 2
            point: 10
          flow_type: "default"
          title: "connector №1"
        }
        {
          id: 2
          start:
            object: 2
            point: 4
          end:
            object: 3
            point: 3
          flow_type: "default"
          title: "connector №2"
        }
      ]
    }
    scheme2: {
      name: 'Parallel Event-Based Gateway'
      description: ''
      objects: [
        {
          id: 1
          type:
            name: 'event'
            start:
              0:
                0:
                  true
          position:
            top: 80
            left: 50
          status: ''
          error: ''
          title: 'message 1'
          description: ''
        }
        {
          id: 2
          type:
            name: 'event'
            start:
              0:
                0:
                  true
          position:
            top: 240
            left: 50
          status: ''
          error: ''
          title: 'message 2'
          description: ''
        }
        {
          id: 3
          type:
            name: 'gateway'
            base: 'data'
            status: 'xor'
          position:
            top: 160
            left: 190
          status: ''
          error: ''
          title: ''
          description: ''
        }
        {
          id: 4
          type:
            name: 'task'
          position:
            top: 140
            left: 370
          status: ''
          error: ''
          title: 'task'
          description: ''
        }
      ]
      connectors: [
        {
          id: 1
          start:
            object: 1
            point:1
          end:
            object: 3
            point: 0
          flow_type: "default"
          title: "connector №1"
        }
        {
          id: 2
          start:
            object: 2
            point: 1
          end:
            object: 3
            point: 2
          flow_type: "default"
          title: "connector №2"
        }
        {
          id: 2
          start:
            object: 3
            point: 1
          end:
            object: 4
            point: 10
          flow_type: "default"
          title: "connector №3"
        }
      ]
    }
  }
