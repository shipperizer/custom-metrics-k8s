# Tried

```
acabbia@ldcl141282m 19:21:54 π  kubectl get --raw /apis/custom.metrics.k8s.io/v1beta1/namespaces/metrics/labs_api_count
Error from server (ServiceUnavailable): the server is currently unable to handle the request
acabbia@ldcl141282m 19:21:58 π  kubectl get --raw /apis/custom.metrics.k8s.io/v1beta1 |jq                              
{
  "kind": "APIResourceList",
  "apiVersion": "v1",
  "groupVersion": "custom.metrics.k8s.io/v1beta1",
  "resources": [
    {
      "name": "services/labs_api_count",
      "singularName": "",
      "namespaced": true,
      "kind": "MetricValueList",
      "verbs": [
        "get"
      ]
    },
    {
      "name": "namespaces/labs_api_count",
      "singularName": "",
      "namespaced": false,
      "kind": "MetricValueList",
      "verbs": [
        "get"
      ]
    },
    {
      "name": "nodes/labs_api_count",
      "singularName": "",
      "namespaced": false,
      "kind": "MetricValueList",
      "verbs": [
        "get"
      ]
    }
  ]
}

acabbia@ldcl141282m 19:30:55 π  kubectl get --raw '/apis/custom.metrics.k8s.io/v1beta1/namespaces/default/services/*/labs_api_count' |jq
{
  "kind": "MetricValueList",
  "apiVersion": "custom.metrics.k8s.io/v1beta1",
  "metadata": {
    "selfLink": "/apis/custom.metrics.k8s.io/v1beta1/namespaces/default/services/%2A/labs_api_count"
  },
  "items": []
}
```



```
acabbia@ldcl141282m 19:47:49 π  kubectl get --raw /apis/custom.metrics.k8s.io/v1beta1 |jq
{
  "kind": "APIResourceList",
  "apiVersion": "v1",
  "groupVersion": "custom.metrics.k8s.io/v1beta1",
  "resources": [
    {
      "name": "namespaces/labs_api_count",
      "singularName": "",
      "namespaced": false,
      "kind": "MetricValueList",
      "verbs": [
        "get"
      ]
    },
    {
      "name": "nodes/labs_api_count",
      "singularName": "",
      "namespaced": false,
      "kind": "MetricValueList",
      "verbs": [
        "get"
      ]
    }
  ]
}
```

```
acabbia@ldcl141282m 16:33:04 π  kubectl get --raw '/apis/custom.metrics.k8s.io/v1beta1/namespaces/default/pods/*/http_requests_per_second' |jq
{
  "kind": "MetricValueList",
  "apiVersion": "custom.metrics.k8s.io/v1beta1",
  "metadata": {
    "selfLink": "/apis/custom.metrics.k8s.io/v1beta1/namespaces/default/pods/%2A/http_requests_per_second"
  },
  "items": [
    {
      "describedObject": {
        "kind": "Pod",
        "namespace": "default",
        "name": "sample-app-8697c9f9b9-m94td",
        "apiVersion": "/v1"
      },
      "metricName": "http_requests_per_second",
      "timestamp": "2020-12-02T16:38:15Z",
      "value": "33m",
      "selector": null
    },
    {
      "describedObject": {
        "kind": "Pod",
        "namespace": "default",
        "name": "sample-app-8697c9f9b9-p4q8t",
        "apiVersion": "/v1"
      },
      "metricName": "http_requests_per_second",
      "timestamp": "2020-12-02T16:38:15Z",
      "value": "33m",
      "selector": null
    }
  ]
}
```

## Useful links

* API paths => https://github.com/kubernetes/community/blob/master/contributors/design-proposals/instrumentation/custom-metrics-api.md#api-paths
* Config => https://github.com/DirectXMan12/k8s-prometheus-adapter/blob/master/docs/config.md
* Config Walkthru => https://github.com/DirectXMan12/k8s-prometheus-adapter/blob/master/docs/config.md
