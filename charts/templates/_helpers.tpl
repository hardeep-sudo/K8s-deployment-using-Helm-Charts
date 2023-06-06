{{/* vim: set filetype=mustache: */}}

{{- define "previewDomain" -}}
{{ printf "preview.%s" .Values.domain }}
{{- end -}}

{{- define "prometheus.annotations" -}}
prometheus.io/scrape: "{{ .prometheus.enabled }}"
prometheus.io/port: "{{ .prometheus.port }}"
prometheus.io/path: "{{ .prometheus.path }}"
{{- end -}}
