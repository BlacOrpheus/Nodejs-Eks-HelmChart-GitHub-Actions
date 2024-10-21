{{/*
Generate a fullname that combines the release name and the chart name
*/}}
{{- define "node-app.chart.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Generate a name that combines the release name and the chart name
*/}}
{{- define "node-app-chart.name" -}}
{{- default .Chart.Name .Values.nameOverride -}}
{{- end -}}
