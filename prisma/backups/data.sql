SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict Daceayj4dWznTfQUH3Gffxi3KSQzQXRNJIVLWZEGdB37tk9WnGrCTUPU6ZjPdwK

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_clients" ("id", "client_secret_hash", "registration_type", "redirect_uris", "grant_types", "client_name", "client_uri", "logo_uri", "created_at", "updated_at", "deleted_at", "client_type") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag", "oauth_client_id") FROM stdin;
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_authorizations" ("id", "authorization_id", "client_id", "user_id", "redirect_uri", "scope", "state", "resource", "code_challenge", "code_challenge_method", "response_type", "status", "authorization_code", "created_at", "expires_at", "approved_at") FROM stdin;
\.


--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_consents" ("id", "user_id", "client_id", "scopes", "granted_at", "revoked_at") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at", "disabled") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: annotation_tag_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."annotation_tag_entity" ("id", "name", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role" ("slug", "displayName", "description", "roleType", "systemRole", "createdAt", "updatedAt") FROM stdin;
global:owner	Owner	Owner	global	t	2025-10-16 15:46:08.356+00	2025-10-16 15:46:20.789+00
global:admin	Admin	Admin	global	t	2025-10-16 15:46:08.356+00	2025-10-16 15:46:20.789+00
global:member	Member	Member	global	t	2025-10-16 15:46:08.356+00	2025-10-16 15:46:20.789+00
project:admin	Project Admin	Project Admin	project	t	2025-10-16 15:46:08.356+00	2025-10-16 15:46:22.288+00
project:personalOwner	Project Owner	Project Owner	project	t	2025-10-16 15:46:08.356+00	2025-10-16 15:46:22.288+00
project:editor	Project Editor	Project Editor	project	t	2025-10-16 15:46:08.356+00	2025-10-16 15:46:22.288+00
project:viewer	Project Viewer	Project Viewer	project	t	2025-10-16 15:46:08.356+00	2025-10-16 15:46:22.288+00
credential:owner	Credential Owner	Credential Owner	credential	t	2025-10-16 15:46:23.646+00	2025-10-16 15:46:23.646+00
credential:user	Credential User	Credential User	credential	t	2025-10-16 15:46:23.646+00	2025-10-16 15:46:23.646+00
workflow:owner	Workflow Owner	Workflow Owner	workflow	t	2025-10-16 15:46:24.629+00	2025-10-16 15:46:24.629+00
workflow:editor	Workflow Editor	Workflow Editor	workflow	t	2025-10-16 15:46:24.629+00	2025-10-16 15:46:24.629+00
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user" ("id", "email", "firstName", "lastName", "password", "personalizationAnswers", "createdAt", "updatedAt", "settings", "disabled", "mfaEnabled", "mfaSecret", "mfaRecoveryCodes", "lastActiveAt", "roleSlug") FROM stdin;
5a4961b6-3a89-432a-b7c1-90d805069b4f	amberbambico.54@gmail.com	Fernan	Bambico	$2a$10$speYYXYPVYv1eZHzUaKozODBdrev3InCIjJpaBC3pmW/6uqSDpa7q	{"version":"v4","personalization_survey_submitted_at":"2025-10-16T15:50:30.876Z","personalization_survey_n8n_version":"1.115.3","automationGoalDevops":["ci-cd","cloud-infrastructure-orchestration","data-syncing","incident-response","monitoring-alerting","reporting","other","ticketing-systems-integrations"],"automationGoalDevopsOther":"education","companySize":"personalUser","companyType":"education","role":"it","reportedSource":"youtube"}	2025-10-16 15:42:52.513+00	2025-10-16 15:50:32.933+00	{"userActivated": false}	f	f	\N	\N	2025-10-16	global:owner
\.


--
-- Data for Name: auth_identity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."auth_identity" ("userId", "providerId", "providerType", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: auth_provider_sync_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."auth_provider_sync_history" ("id", "providerType", "runMode", "status", "startedAt", "endedAt", "scanned", "created", "updated", "disabled", "error") FROM stdin;
\.


--
-- Data for Name: credentials_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."credentials_entity" ("name", "data", "type", "createdAt", "updatedAt", "id", "isManaged") FROM stdin;
Airtable Personal Access Token account	U2FsdGVkX1/Bti4mRBwTweH16YWPMZbQZ/w8lWgTQiV1RC6xHg4Cv9/Lt7dJVyEqLD4XVdR+7b7C7RoozzvikLr4urxa0TVhczE/b+rzrNHoQC5Sn8o+klytMQMql2aT37M1Hv1KLUKKJXiCtvFsiQU2eJZDl/ieyBbMZ6Wy644=	airtableTokenApi	2025-10-16 16:37:33.579+00	2025-10-16 16:37:33.253+00	RA6c0BOIan2OR7lZ	f
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project" ("id", "name", "type", "createdAt", "updatedAt", "icon", "description") FROM stdin;
e8RpyUBIAxTYUpu5	Fernan Bambico <amberbambico.54@gmail.com>	personal	2025-10-16 15:44:23.022+00	2025-10-16 15:47:54.322+00	\N	\N
\.


--
-- Data for Name: data_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."data_table" ("id", "name", "projectId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: data_table_column; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."data_table_column" ("id", "name", "type", "index", "dataTableId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: event_destinations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."event_destinations" ("id", "destination", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: folder; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."folder" ("id", "name", "parentFolderId", "projectId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: workflow_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_entity" ("name", "active", "nodes", "connections", "createdAt", "updatedAt", "settings", "staticData", "pinData", "versionId", "triggerCount", "id", "meta", "parentFolderId", "isArchived") FROM stdin;
My workflow	f	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.2,"position":[0,0],"id":"2de74a8d-0902-46e1-9259-058f2175b593","name":"Schedule Trigger"}]	{}	2025-10-16 16:29:34.384+00	2025-10-16 16:29:34.384+00	{"executionOrder":"v1"}	\N	{}	dc3dff43-103d-4a23-aae0-6ff5172f8433	0	rqlUyMiEmIGvzbdF	\N	\N	f
My workflow	f	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.2,"position":[0,0],"id":"2de74a8d-0902-46e1-9259-058f2175b593","name":"Schedule Trigger"}]	{}	2025-10-16 16:29:38.221+00	2025-10-16 16:29:38.221+00	{"executionOrder":"v1"}	\N	{}	155a3142-aace-4d7c-85cf-5998aec11270	0	CVzrDFsnctC7SzNS	\N	\N	f
\.


--
-- Data for Name: execution_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_entity" ("id", "finished", "mode", "retryOf", "retrySuccessId", "startedAt", "stoppedAt", "waitTill", "status", "workflowId", "deletedAt", "createdAt") FROM stdin;
1	t	manual	\N	\N	2025-10-16 16:29:41.36+00	2025-10-16 16:29:41.786+00	\N	success	rqlUyMiEmIGvzbdF	\N	2025-10-16 16:29:39.102+00
2	t	manual	\N	\N	2025-10-16 16:29:44.29+00	2025-10-16 16:29:44.635+00	\N	success	CVzrDFsnctC7SzNS	\N	2025-10-16 16:29:42.616+00
3	f	manual	\N	\N	2025-10-16 16:40:13.937+00	2025-10-16 16:40:14.591+00	\N	error	CVzrDFsnctC7SzNS	\N	2025-10-16 16:40:12.97+00
4	t	manual	\N	\N	2025-10-16 16:40:35.557+00	2025-10-16 16:40:36.888+00	\N	success	CVzrDFsnctC7SzNS	\N	2025-10-16 16:40:34.668+00
5	f	manual	\N	\N	2025-10-16 16:45:52.685+00	2025-10-16 16:45:53.181+00	\N	error	CVzrDFsnctC7SzNS	\N	2025-10-16 16:45:51.762+00
\.


--
-- Data for Name: execution_annotations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_annotations" ("id", "executionId", "vote", "note", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: execution_annotation_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_annotation_tags" ("annotationId", "tagId") FROM stdin;
\.


--
-- Data for Name: execution_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_data" ("executionId", "workflowData", "data") FROM stdin;
1	{"id":"rqlUyMiEmIGvzbdF","name":"My workflow","active":false,"nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.2,"position":[0,0],"id":"2de74a8d-0902-46e1-9259-058f2175b593","name":"Schedule Trigger"}],"connections":{},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"4"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12"},"Schedule Trigger",["4"],{"Schedule Trigger":"13"},{},{},[],{},{},{},["14"],{"startTime":1760632181705,"executionIndex":0,"source":"15","hints":"16","executionTime":79,"executionStatus":"17","data":"18"},[],[],"success",{"main":"19"},["20"],["21"],{"json":"22","pairedItem":"23"},{"timestamp":"24","Readable date":"25","Readable time":"26","Day of week":"27","Year":"28","Month":"29","Day of month":"30","Hour":"31","Minute":"32","Second":"33","Timezone":"34"},{"item":0},"2025-10-16T12:29:41.711-04:00","October 16th 2025, 12:29:41 pm","12:29:41 pm","Thursday","2025","October","16","12","29","41","America/New_York (UTC-04:00)"]
2	{"id":"CVzrDFsnctC7SzNS","name":"My workflow","active":false,"nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.2,"position":[0,0],"id":"2de74a8d-0902-46e1-9259-058f2175b593","name":"Schedule Trigger"}],"connections":{},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"4"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12"},"Schedule Trigger",["4"],{"Schedule Trigger":"13"},{},{},[],{},{},{},["14"],{"startTime":1760632184632,"executionIndex":0,"source":"15","hints":"16","executionTime":2,"executionStatus":"17","data":"18"},[],[],"success",{"main":"19"},["20"],["21"],{"json":"22","pairedItem":"23"},{"timestamp":"24","Readable date":"25","Readable time":"26","Day of week":"27","Year":"28","Month":"29","Day of month":"30","Hour":"31","Minute":"32","Second":"33","Timezone":"34"},{"item":0},"2025-10-16T12:29:44.634-04:00","October 16th 2025, 12:29:44 pm","12:29:44 pm","Thursday","2025","October","16","12","29","44","America/New_York (UTC-04:00)"]
3	{"id":"CVzrDFsnctC7SzNS","name":"My workflow","active":false,"nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.2,"position":[0,0],"id":"2de74a8d-0902-46e1-9259-058f2175b593","name":"Schedule Trigger"},{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"apphc0pgaxnU8zcmm","mode":"list","cachedResultName":"AI Model Ops Monitor","cachedResultUrl":"https://airtable.com/apphc0pgaxnU8zcmm"},"table":{"__rl":true,"value":"tblEfXNdJpQclvpe6","mode":"list","cachedResultName":"Training Runs","cachedResultUrl":"https://airtable.com/apphc0pgaxnU8zcmm/tblEfXNdJpQclvpe6"},"columns":{"mappingMode":"defineBelow","value":{"Run Name":"Create Table for Client's Details","Model Version":"it will be used to store Client Data"},"matchingColumns":[],"schema":[{"id":"Run Name","displayName":"Run Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Model Version","displayName":"Model Version","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Start Time","displayName":"Start Time","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"End Time","displayName":"End Time","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Queued","value":"Queued"},{"name":"Running","value":"Running"},{"name":"Completed","value":"Completed"},{"name":"Failed","value":"Failed"},{"name":"Cancelled","value":"Cancelled"}],"readOnly":false,"removed":false},{"id":"Accuracy","displayName":"Accuracy","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Loss","displayName":"Loss","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Parameters","displayName":"Parameters","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Metrics Screenshot","displayName":"Metrics Screenshot","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Logs","displayName":"Logs","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Triggered By","displayName":"Triggered By","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Duration (Minutes)","displayName":"Duration (Minutes)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Deployment Linked","displayName":"Deployment Linked","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Training Duration (Calculated)","displayName":"Training Duration (Calculated)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Is Successful","displayName":"Is Successful","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Version Name (Lookup)","displayName":"Version Name (Lookup)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Deployment Status (Lookup)","displayName":"Deployment Status (Lookup)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Training Summary (AI)","displayName":"Training Summary (AI)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Error Cause (AI)","displayName":"Error Cause (AI)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.1,"position":[208,0],"id":"9ba209de-9c38-4791-ad8d-01085243fc0c","name":"Create a record","credentials":{"airtableTokenApi":{"id":"RA6c0BOIan2OR7lZ","name":"Airtable Personal Access Token account"}}}],"connections":{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"resultData":"1"},{"error":"2","runData":"3"},{"level":"4","tags":"5","timestamp":1760632814324,"context":"6","functionality":"7","name":"8","message":"9","stack":"10"},{},"warning",{},{},"regular","WorkflowHasIssuesError","The workflow has issues and cannot be executed for that reason. Please fix them first.","WorkflowHasIssuesError: The workflow has issues and cannot be executed for that reason. Please fix them first.\\n    at WorkflowExecute.checkForWorkflowIssues (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_08b575bec2313d5d8a4cc75358971443/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1382:10)\\n    at WorkflowExecute.processRunExecutionData (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_08b575bec2313d5d8a4cc75358971443/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1461:8)\\n    at WorkflowExecute.runPartialWorkflow2 (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_08b575bec2313d5d8a4cc75358971443/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:332:15)\\n    at ManualExecutionService.runManually (/usr/local/lib/node_modules/n8n/src/manual-execution.service.ts:175:27)\\n    at WorkflowRunner.runMainProcess (/usr/local/lib/node_modules/n8n/src/workflow-runner.ts:303:53)\\n    at processTicksAndRejections (node:internal/process/task_queues:105:5)\\n    at WorkflowRunner.run (/usr/local/lib/node_modules/n8n/src/workflow-runner.ts:182:4)\\n    at WorkflowExecutionService.executeManually (/usr/local/lib/node_modules/n8n/src/workflows/workflow-execution.service.ts:222:23)\\n    at WorkflowsController.runManually (/usr/local/lib/node_modules/n8n/src/workflows/workflows.controller.ts:464:10)\\n    at handler (/usr/local/lib/node_modules/n8n/src/controller.registry.ts:79:12)"]
4	{"id":"CVzrDFsnctC7SzNS","name":"My workflow","active":false,"nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.2,"position":[0,0],"id":"2de74a8d-0902-46e1-9259-058f2175b593","name":"Schedule Trigger"},{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"apphc0pgaxnU8zcmm","mode":"list","cachedResultName":"AI Model Ops Monitor","cachedResultUrl":"https://airtable.com/apphc0pgaxnU8zcmm"},"table":{"__rl":true,"value":"tblEfXNdJpQclvpe6","mode":"list","cachedResultName":"Training Runs","cachedResultUrl":"https://airtable.com/apphc0pgaxnU8zcmm/tblEfXNdJpQclvpe6"},"columns":{"mappingMode":"defineBelow","value":{"Run Name":"Create Table for Client's Details"},"matchingColumns":[],"schema":[{"id":"Run Name","displayName":"Run Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Model Version","displayName":"Model Version","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Start Time","displayName":"Start Time","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"End Time","displayName":"End Time","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Queued","value":"Queued"},{"name":"Running","value":"Running"},{"name":"Completed","value":"Completed"},{"name":"Failed","value":"Failed"},{"name":"Cancelled","value":"Cancelled"}],"readOnly":false,"removed":false},{"id":"Accuracy","displayName":"Accuracy","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Loss","displayName":"Loss","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Parameters","displayName":"Parameters","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Metrics Screenshot","displayName":"Metrics Screenshot","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Logs","displayName":"Logs","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Triggered By","displayName":"Triggered By","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Duration (Minutes)","displayName":"Duration (Minutes)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Deployment Linked","displayName":"Deployment Linked","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Training Duration (Calculated)","displayName":"Training Duration (Calculated)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Is Successful","displayName":"Is Successful","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Version Name (Lookup)","displayName":"Version Name (Lookup)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Deployment Status (Lookup)","displayName":"Deployment Status (Lookup)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Training Summary (AI)","displayName":"Training Summary (AI)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Error Cause (AI)","displayName":"Error Cause (AI)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.1,"position":[208,0],"id":"9ba209de-9c38-4791-ad8d-01085243fc0c","name":"Create a record","credentials":{"airtableTokenApi":{"id":"RA6c0BOIan2OR7lZ","name":"Airtable Personal Access Token account"}}}],"connections":{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"4"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12"},"Create a record",["13","4"],{"Schedule Trigger":"14","Create a record":"15"},{},{},[],{},{},{},"Schedule Trigger",["16"],["17"],{"startTime":1760632835935,"executionIndex":0,"source":"18","hints":"19","executionTime":2,"executionStatus":"20","data":"21"},{"startTime":1760632835938,"executionIndex":1,"source":"22","hints":"23","executionTime":949,"executionStatus":"20","data":"24"},[],[],"success",{"main":"25"},["26"],[],{"main":"27"},["28"],{"previousNode":"13"},["29"],["30"],["31"],{"json":"32","pairedItem":"33"},{"json":"34","pairedItem":"35"},{"timestamp":"36","Readable date":"37","Readable time":"38","Day of week":"39","Year":"40","Month":"41","Day of month":"42","Hour":"43","Minute":"44","Second":"45","Timezone":"46"},{"item":0},{"id":"47","createdTime":"48","fields":"49"},{"item":0},"2025-10-16T12:40:35.936-04:00","October 16th 2025, 12:40:35 pm","12:40:35 pm","Thursday","2025","October","16","12","40","35","America/New_York (UTC-04:00)","recuYO9fqzFfQxjdM","2025-10-16T16:40:37.000Z",{"Run Name":"50","Training Duration (Calculated)":"51","Is Successful":"52","Training Summary (AI)":"53","Error Cause (AI)":"54"},"Create Table for Client's Details",{"specialValue":"55"},"No",{"state":"56","errorType":"57","value":null,"isStale":false},{"state":"56","errorType":"57","value":null,"isStale":false},"NaN","error","emptyDependency"]
5	{"id":"CVzrDFsnctC7SzNS","name":"My workflow","active":false,"nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.2,"position":[0,0],"id":"2de74a8d-0902-46e1-9259-058f2175b593","name":"Schedule Trigger"},{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"apphc0pgaxnU8zcmm","mode":"list","cachedResultName":"AI Model Ops Monitor","cachedResultUrl":"https://airtable.com/apphc0pgaxnU8zcmm"},"table":{"__rl":true,"value":"tblEfXNdJpQclvpe6","mode":"list","cachedResultName":"Training Runs","cachedResultUrl":"https://airtable.com/apphc0pgaxnU8zcmm/tblEfXNdJpQclvpe6"},"columns":{"mappingMode":"defineBelow","value":{"Run Name":"Create Table for Client's Details","Start Time":"={{ $json.timestamp }}{{ $json['Day of week'] }}","Status":"Running","Accuracy":0,"Loss":0,"Duration (Minutes)":0},"matchingColumns":[],"schema":[{"id":"Run Name","displayName":"Run Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Model Version","displayName":"Model Version","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Start Time","displayName":"Start Time","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"End Time","displayName":"End Time","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Queued","value":"Queued"},{"name":"Running","value":"Running"},{"name":"Completed","value":"Completed"},{"name":"Failed","value":"Failed"},{"name":"Cancelled","value":"Cancelled"}],"readOnly":false,"removed":false},{"id":"Accuracy","displayName":"Accuracy","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Loss","displayName":"Loss","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Parameters","displayName":"Parameters","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Metrics Screenshot","displayName":"Metrics Screenshot","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Logs","displayName":"Logs","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Triggered By","displayName":"Triggered By","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Duration (Minutes)","displayName":"Duration (Minutes)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Deployment Linked","displayName":"Deployment Linked","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Training Duration (Calculated)","displayName":"Training Duration (Calculated)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Is Successful","displayName":"Is Successful","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Version Name (Lookup)","displayName":"Version Name (Lookup)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Deployment Status (Lookup)","displayName":"Deployment Status (Lookup)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Training Summary (AI)","displayName":"Training Summary (AI)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Error Cause (AI)","displayName":"Error Cause (AI)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.1,"position":[208,0],"id":"9ba209de-9c38-4791-ad8d-01085243fc0c","name":"Create a record","credentials":{"airtableTokenApi":{"id":"RA6c0BOIan2OR7lZ","name":"Airtable Personal Access Token account"}}}],"connections":{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{},{"runData":"4","pinData":"5","lastNodeExecuted":"6","error":"7"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12"},{"Schedule Trigger":"13","Create a record":"14"},{},"Create a record",{"level":"15","tags":"16","description":"17","timestamp":1760633153088,"context":"18","functionality":"19","name":"20","message":"21","stack":"22"},{},["23"],{},{},{},["24"],["25"],"warning",{},"'Start Time' expects a dateTime but we got '2025-10-16T12:45:53.056-04:00Thursday' <br/><br/> Consider using <a href=\\"https://moment.github.io/luxon/api-docs/index.html#datetimefromformat\\" target=\\"_blank\\"><code>DateTime.fromFormat</code></a> to work with custom date formats.",{"runIndex":0,"itemIndex":0,"nodeCause":"6"},"regular","ExpressionError","Invalid input for 'Start Time' [item 0]","ExpressionError: Invalid input for 'Start Time' [item 0]\\n    at validateValueAgainstSchema (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_08b575bec2313d5d8a4cc75358971443/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/validate-value-against-schema.ts:206:9)\\n    at ExecuteContext._getNodeParameter (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_08b575bec2313d5d8a4cc75358971443/node_modules/n8n-core/src/execution-engine/node-execution-context/node-execution-context.ts:480:42)\\n    at ExecuteContext.getNodeParameter (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_08b575bec2313d5d8a4cc75358971443/node_modules/n8n-core/src/execution-engine/node-execution-context/execute-context.ts:128:9)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file+packages+nodes-base_@aws-sdk+credential-providers@3.808.0_asn1.js@5_afd197edb2c1f848eae21a96a97fab23/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/record/create.operation.ts:75:25)\\n    at ExecuteContext.router (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file+packages+nodes-base_@aws-sdk+credential-providers@3.808.0_asn1.js@5_afd197edb2c1f848eae21a96a97fab23/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/router.ts:32:67)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file+packages+nodes-base_@aws-sdk+credential-providers@3.808.0_asn1.js@5_afd197edb2c1f848eae21a96a97fab23/node_modules/n8n-nodes-base/nodes/Airtable/v2/AirtableV2.node.ts:30:23)\\n    at WorkflowExecute.executeNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_08b575bec2313d5d8a4cc75358971443/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1093:31)\\n    at WorkflowExecute.runNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_08b575bec2313d5d8a4cc75358971443/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1274:22)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_08b575bec2313d5d8a4cc75358971443/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1676:38\\n    at processTicksAndRejections (node:internal/process/task_queues:105:5)",{"node":"26","data":"27","source":"28"},{"startTime":1760633153054,"executionIndex":0,"source":"29","hints":"30","executionTime":2,"executionStatus":"31","data":"32"},{"startTime":1760633153057,"executionIndex":1,"source":"33","hints":"34","executionTime":40,"executionStatus":"35","error":"36"},{"parameters":"37","type":"38","typeVersion":2.1,"position":"39","id":"40","name":"6","credentials":"41"},{"main":"42"},{"main":"33"},[],[],"success",{"main":"43"},["44"],[],"error",{"level":"15","tags":"16","description":"17","timestamp":1760633153088,"context":"18","functionality":"19","name":"20","message":"21","stack":"22"},{"authentication":"45","resource":"46","operation":"47","base":"48","table":"49","columns":"50","options":"51"},"n8n-nodes-base.airtable",[208,0],"9ba209de-9c38-4791-ad8d-01085243fc0c",{"airtableTokenApi":"52"},["53"],["54"],{"previousNode":"55"},"airtableTokenApi","record","create",{"__rl":true,"value":"56","mode":"57","cachedResultName":"58","cachedResultUrl":"59"},{"__rl":true,"value":"60","mode":"57","cachedResultName":"61","cachedResultUrl":"62"},{"mappingMode":"63","value":"64","matchingColumns":"65","schema":"66","attemptToConvertTypes":false,"convertFieldsToString":false},{},{"id":"67","name":"68"},["69"],["70"],"Schedule Trigger","apphc0pgaxnU8zcmm","list","AI Model Ops Monitor","https://airtable.com/apphc0pgaxnU8zcmm","tblEfXNdJpQclvpe6","Training Runs","https://airtable.com/apphc0pgaxnU8zcmm/tblEfXNdJpQclvpe6","defineBelow",{"Run Name":"71","Start Time":"72","Status":"73","Accuracy":0,"Loss":0,"Duration (Minutes)":0},[],["74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92"],"RA6c0BOIan2OR7lZ","Airtable Personal Access Token account",{"json":"93","pairedItem":"94"},{"json":"93","pairedItem":"95"},"Create Table for Client's Details","={{ $json.timestamp }}{{ $json['Day of week'] }}","Running",{"id":"96","displayName":"96","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"97","readOnly":false,"removed":false},{"id":"98","displayName":"98","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"99","readOnly":false,"removed":false},{"id":"100","displayName":"100","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"101","readOnly":false,"removed":false},{"id":"102","displayName":"102","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"101","readOnly":false,"removed":false},{"id":"103","displayName":"103","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"104","options":"105","readOnly":false,"removed":false},{"id":"106","displayName":"106","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"107","readOnly":false,"removed":false},{"id":"108","displayName":"108","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"107","readOnly":false,"removed":false},{"id":"109","displayName":"109","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"97","readOnly":false,"removed":false},{"id":"110","displayName":"110","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"99","readOnly":false,"removed":false},{"id":"111","displayName":"111","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"97","readOnly":false,"removed":false},{"id":"112","displayName":"112","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"97","readOnly":false,"removed":false},{"id":"113","displayName":"113","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"107","readOnly":false,"removed":false},{"id":"114","displayName":"114","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"99","readOnly":false,"removed":false},{"id":"115","displayName":"115","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"97","readOnly":true,"removed":true},{"id":"116","displayName":"116","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"97","readOnly":true,"removed":true},{"id":"117","displayName":"117","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"97","readOnly":true,"removed":true},{"id":"118","displayName":"118","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"97","readOnly":true,"removed":true},{"id":"119","displayName":"119","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"97","readOnly":false,"removed":false},{"id":"120","displayName":"120","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"97","readOnly":false,"removed":false},{"timestamp":"121","Readable date":"122","Readable time":"123","Day of week":"124","Year":"125","Month":"126","Day of month":"127","Hour":"128","Minute":"129","Second":"130","Timezone":"131"},{"item":0},{"item":0},"Run Name","string","Model Version","array","Start Time","dateTime","End Time","Status","options",["132","133","134","135","136"],"Accuracy","number","Loss","Parameters","Metrics Screenshot","Logs","Triggered By","Duration (Minutes)","Deployment Linked","Training Duration (Calculated)","Is Successful","Version Name (Lookup)","Deployment Status (Lookup)","Training Summary (AI)","Error Cause (AI)","2025-10-16T12:45:53.056-04:00","October 16th 2025, 12:45:53 pm","12:45:53 pm","Thursday","2025","October","16","12","45","53","America/New_York (UTC-04:00)",{"name":"137","value":"137"},{"name":"73","value":"73"},{"name":"138","value":"138"},{"name":"139","value":"139"},{"name":"140","value":"140"},"Queued","Completed","Failed","Cancelled"]
\.


--
-- Data for Name: execution_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_metadata" ("id", "executionId", "key", "value") FROM stdin;
\.


--
-- Data for Name: tag_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."tag_entity" ("name", "createdAt", "updatedAt", "id") FROM stdin;
\.


--
-- Data for Name: folder_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."folder_tag" ("folderId", "tagId") FROM stdin;
\.


--
-- Data for Name: insights_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_metadata" ("metaId", "workflowId", "projectId", "workflowName", "projectName") FROM stdin;
\.


--
-- Data for Name: insights_by_period; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_by_period" ("id", "metaId", "type", "value", "periodUnit", "periodStart") FROM stdin;
\.


--
-- Data for Name: insights_raw; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_raw" ("id", "metaId", "type", "value", "timestamp") FROM stdin;
\.


--
-- Data for Name: installed_packages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."installed_packages" ("packageName", "installedVersion", "authorName", "authorEmail", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: installed_nodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."installed_nodes" ("name", "type", "latestVersion", "package") FROM stdin;
\.


--
-- Data for Name: invalid_auth_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."invalid_auth_token" ("token", "expiresAt") FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."migrations" ("id", "timestamp", "name") FROM stdin;
1	1587669153312	InitialMigration1587669153312
2	1589476000887	WebhookModel1589476000887
3	1594828256133	CreateIndexStoppedAt1594828256133
4	1607431743768	MakeStoppedAtNullable1607431743768
5	1611144599516	AddWebhookId1611144599516
6	1617270242566	CreateTagEntity1617270242566
7	1620824779533	UniqueWorkflowNames1620824779533
8	1626176912946	AddwaitTill1626176912946
9	1630419189837	UpdateWorkflowCredentials1630419189837
10	1644422880309	AddExecutionEntityIndexes1644422880309
11	1646834195327	IncreaseTypeVarcharLimit1646834195327
12	1646992772331	CreateUserManagement1646992772331
13	1648740597343	LowerCaseUserEmail1648740597343
14	1652254514002	CommunityNodes1652254514002
15	1652367743993	AddUserSettings1652367743993
16	1652905585850	AddAPIKeyColumn1652905585850
17	1654090467022	IntroducePinData1654090467022
18	1658932090381	AddNodeIds1658932090381
19	1659902242948	AddJsonKeyPinData1659902242948
20	1660062385367	CreateCredentialsUserRole1660062385367
21	1663755770893	CreateWorkflowsEditorRole1663755770893
22	1664196174001	WorkflowStatistics1664196174001
23	1665484192212	CreateCredentialUsageTable1665484192212
24	1665754637025	RemoveCredentialUsageTable1665754637025
25	1669739707126	AddWorkflowVersionIdColumn1669739707126
26	1669823906995	AddTriggerCountColumn1669823906995
27	1671535397530	MessageEventBusDestinations1671535397530
28	1671726148421	RemoveWorkflowDataLoadedFlag1671726148421
29	1673268682475	DeleteExecutionsWithWorkflows1673268682475
30	1674138566000	AddStatusToExecutions1674138566000
31	1674509946020	CreateLdapEntities1674509946020
32	1675940580449	PurgeInvalidWorkflowConnections1675940580449
33	1676996103000	MigrateExecutionStatus1676996103000
34	1677236854063	UpdateRunningExecutionStatus1677236854063
35	1677501636754	CreateVariables1677501636754
36	1679416281778	CreateExecutionMetadataTable1679416281778
37	1681134145996	AddUserActivatedProperty1681134145996
38	1681134145997	RemoveSkipOwnerSetup1681134145997
39	1690000000000	MigrateIntegerKeysToString1690000000000
40	1690000000020	SeparateExecutionData1690000000020
41	1690000000030	RemoveResetPasswordColumns1690000000030
42	1690000000030	AddMfaColumns1690000000030
43	1690787606731	AddMissingPrimaryKeyOnExecutionData1690787606731
44	1691088862123	CreateWorkflowNameIndex1691088862123
45	1692967111175	CreateWorkflowHistoryTable1692967111175
46	1693491613982	ExecutionSoftDelete1693491613982
47	1693554410387	DisallowOrphanExecutions1693554410387
48	1694091729095	MigrateToTimestampTz1694091729095
49	1695128658538	AddWorkflowMetadata1695128658538
50	1695829275184	ModifyWorkflowHistoryNodesAndConnections1695829275184
51	1700571993961	AddGlobalAdminRole1700571993961
52	1705429061930	DropRoleMapping1705429061930
53	1711018413374	RemoveFailedExecutionStatus1711018413374
54	1711390882123	MoveSshKeysToDatabase1711390882123
55	1712044305787	RemoveNodesAccess1712044305787
56	1714133768519	CreateProject1714133768519
57	1714133768521	MakeExecutionStatusNonNullable1714133768521
58	1717498465931	AddActivatedAtUserSetting1717498465931
59	1720101653148	AddConstraintToExecutionMetadata1720101653148
60	1721377157740	FixExecutionMetadataSequence1721377157740
61	1723627610222	CreateInvalidAuthTokenTable1723627610222
62	1723796243146	RefactorExecutionIndices1723796243146
63	1724753530828	CreateAnnotationTables1724753530828
64	1724951148974	AddApiKeysTable1724951148974
65	1726606152711	CreateProcessedDataTable1726606152711
66	1727427440136	SeparateExecutionCreationFromStart1727427440136
67	1728659839644	AddMissingPrimaryKeyOnAnnotationTagMapping1728659839644
68	1729607673464	UpdateProcessedDataValueColumnToText1729607673464
69	1729607673469	AddProjectIcons1729607673469
70	1730386903556	CreateTestDefinitionTable1730386903556
71	1731404028106	AddDescriptionToTestDefinition1731404028106
72	1731582748663	MigrateTestDefinitionKeyToString1731582748663
73	1732271325258	CreateTestMetricTable1732271325258
74	1732549866705	CreateTestRun1732549866705
75	1733133775640	AddMockedNodesColumnToTestDefinition1733133775640
76	1734479635324	AddManagedColumnToCredentialsTable1734479635324
77	1736172058779	AddStatsColumnsToTestRun1736172058779
78	1736947513045	CreateTestCaseExecutionTable1736947513045
79	1737715421462	AddErrorColumnsToTestRuns1737715421462
80	1738709609940	CreateFolderTable1738709609940
81	1739549398681	CreateAnalyticsTables1739549398681
82	1740445074052	UpdateParentFolderIdColumn1740445074052
83	1741167584277	RenameAnalyticsToInsights1741167584277
84	1742918400000	AddScopesColumnToApiKeys1742918400000
85	1745322634000	ClearEvaluation1745322634000
86	1745587087521	AddWorkflowStatisticsRootCount1745587087521
87	1745934666076	AddWorkflowArchivedColumn1745934666076
88	1745934666077	DropRoleTable1745934666077
89	1747824239000	AddProjectDescriptionColumn1747824239000
90	1750252139166	AddLastActiveAtColumnToUser1750252139166
91	1750252139166	AddScopeTables1750252139166
92	1750252139167	AddRolesTables1750252139167
93	1750252139168	LinkRoleToUserTable1750252139168
94	1750252139170	RemoveOldRoleColumn1750252139170
95	1752669793000	AddInputsOutputsToTestCaseExecution1752669793000
96	1753953244168	LinkRoleToProjectRelationTable1753953244168
97	1754475614601	CreateDataStoreTables1754475614601
98	1754475614602	ReplaceDataStoreTablesWithDataTables1754475614602
99	1756906557570	AddTimestampsToRoleAndRoleIndexes1756906557570
100	1758731786132	AddAudienceColumnToApiKeys1758731786132
101	1758794506893	AddProjectIdToVariableTable1758794506893
\.


--
-- Data for Name: processed_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."processed_data" ("workflowId", "context", "createdAt", "updatedAt", "value") FROM stdin;
\.


--
-- Data for Name: project_relation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project_relation" ("projectId", "userId", "role", "createdAt", "updatedAt") FROM stdin;
e8RpyUBIAxTYUpu5	5a4961b6-3a89-432a-b7c1-90d805069b4f	project:personalOwner	2025-10-16 15:44:23.022+00	2025-10-16 15:44:23.022+00
\.


--
-- Data for Name: scope; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."scope" ("slug", "displayName", "description") FROM stdin;
annotationTag:create	Create Annotation Tag	Allows creating new annotation tags.
annotationTag:read	annotationTag:read	\N
annotationTag:update	annotationTag:update	\N
annotationTag:delete	annotationTag:delete	\N
annotationTag:list	annotationTag:list	\N
annotationTag:*	annotationTag:*	\N
auditLogs:manage	auditLogs:manage	\N
auditLogs:*	auditLogs:*	\N
banner:dismiss	banner:dismiss	\N
banner:*	banner:*	\N
community:register	community:register	\N
community:*	community:*	\N
communityPackage:install	communityPackage:install	\N
communityPackage:uninstall	communityPackage:uninstall	\N
communityPackage:update	communityPackage:update	\N
communityPackage:list	communityPackage:list	\N
communityPackage:manage	communityPackage:manage	\N
communityPackage:*	communityPackage:*	\N
credential:share	credential:share	\N
credential:move	credential:move	\N
credential:create	credential:create	\N
credential:read	credential:read	\N
credential:update	credential:update	\N
credential:delete	credential:delete	\N
credential:list	credential:list	\N
credential:*	credential:*	\N
externalSecretsProvider:sync	externalSecretsProvider:sync	\N
externalSecretsProvider:create	externalSecretsProvider:create	\N
externalSecretsProvider:read	externalSecretsProvider:read	\N
externalSecretsProvider:update	externalSecretsProvider:update	\N
externalSecretsProvider:delete	externalSecretsProvider:delete	\N
externalSecretsProvider:list	externalSecretsProvider:list	\N
externalSecretsProvider:*	externalSecretsProvider:*	\N
externalSecret:list	externalSecret:list	\N
externalSecret:use	externalSecret:use	\N
externalSecret:*	externalSecret:*	\N
eventBusDestination:test	eventBusDestination:test	\N
eventBusDestination:create	eventBusDestination:create	\N
eventBusDestination:read	eventBusDestination:read	\N
eventBusDestination:update	eventBusDestination:update	\N
eventBusDestination:delete	eventBusDestination:delete	\N
eventBusDestination:list	eventBusDestination:list	\N
eventBusDestination:*	eventBusDestination:*	\N
ldap:sync	ldap:sync	\N
ldap:manage	ldap:manage	\N
ldap:*	ldap:*	\N
license:manage	license:manage	\N
license:*	license:*	\N
logStreaming:manage	logStreaming:manage	\N
logStreaming:*	logStreaming:*	\N
orchestration:read	orchestration:read	\N
orchestration:list	orchestration:list	\N
orchestration:*	orchestration:*	\N
project:create	project:create	\N
project:read	project:read	\N
project:update	project:update	\N
project:delete	project:delete	\N
project:list	project:list	\N
project:*	project:*	\N
saml:manage	saml:manage	\N
saml:*	saml:*	\N
securityAudit:generate	securityAudit:generate	\N
securityAudit:*	securityAudit:*	\N
sourceControl:pull	sourceControl:pull	\N
sourceControl:push	sourceControl:push	\N
sourceControl:manage	sourceControl:manage	\N
sourceControl:*	sourceControl:*	\N
tag:create	tag:create	\N
tag:read	tag:read	\N
tag:update	tag:update	\N
tag:delete	tag:delete	\N
tag:list	tag:list	\N
tag:*	tag:*	\N
user:resetPassword	user:resetPassword	\N
user:changeRole	user:changeRole	\N
user:enforceMfa	user:enforceMfa	\N
user:create	user:create	\N
user:read	user:read	\N
user:update	user:update	\N
user:delete	user:delete	\N
user:list	user:list	\N
user:*	user:*	\N
variable:create	variable:create	\N
variable:read	variable:read	\N
variable:update	variable:update	\N
variable:delete	variable:delete	\N
variable:list	variable:list	\N
variable:*	variable:*	\N
projectVariable:create	projectVariable:create	\N
projectVariable:read	projectVariable:read	\N
projectVariable:update	projectVariable:update	\N
projectVariable:delete	projectVariable:delete	\N
projectVariable:list	projectVariable:list	\N
projectVariable:*	projectVariable:*	\N
workersView:manage	workersView:manage	\N
workersView:*	workersView:*	\N
workflow:share	workflow:share	\N
workflow:execute	workflow:execute	\N
workflow:move	workflow:move	\N
workflow:activate	workflow:activate	\N
workflow:deactivate	workflow:deactivate	\N
workflow:create	workflow:create	\N
workflow:read	workflow:read	\N
workflow:update	workflow:update	\N
workflow:delete	workflow:delete	\N
workflow:list	workflow:list	\N
workflow:*	workflow:*	\N
folder:create	folder:create	\N
folder:read	folder:read	\N
folder:update	folder:update	\N
folder:delete	folder:delete	\N
folder:list	folder:list	\N
folder:move	folder:move	\N
folder:*	folder:*	\N
insights:list	insights:list	\N
insights:*	insights:*	\N
oidc:manage	oidc:manage	\N
oidc:*	oidc:*	\N
dataStore:create	dataStore:create	\N
dataStore:read	dataStore:read	\N
dataStore:update	dataStore:update	\N
dataStore:delete	dataStore:delete	\N
dataStore:list	dataStore:list	\N
dataStore:readRow	dataStore:readRow	\N
dataStore:writeRow	dataStore:writeRow	\N
dataStore:listProject	dataStore:listProject	\N
dataStore:*	dataStore:*	\N
execution:delete	execution:delete	\N
execution:read	execution:read	\N
execution:retry	execution:retry	\N
execution:list	execution:list	\N
execution:get	execution:get	\N
execution:*	execution:*	\N
workflowTags:update	workflowTags:update	\N
workflowTags:list	workflowTags:list	\N
workflowTags:*	workflowTags:*	\N
role:manage	role:manage	\N
role:*	role:*	\N
mcp:manage	mcp:manage	\N
mcp:*	mcp:*	\N
mcpApiKey:create	mcpApiKey:create	\N
mcpApiKey:rotate	mcpApiKey:rotate	\N
mcpApiKey:*	mcpApiKey:*	\N
*	*	\N
\.


--
-- Data for Name: role_scope; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role_scope" ("roleSlug", "scopeSlug") FROM stdin;
global:owner	annotationTag:create
global:owner	annotationTag:read
global:owner	annotationTag:update
global:owner	annotationTag:delete
global:owner	annotationTag:list
global:owner	auditLogs:manage
global:owner	banner:dismiss
global:owner	community:register
global:owner	communityPackage:install
global:owner	communityPackage:uninstall
global:owner	communityPackage:update
global:owner	communityPackage:list
global:owner	credential:share
global:owner	credential:move
global:owner	credential:create
global:owner	credential:read
global:owner	credential:update
global:owner	credential:delete
global:owner	credential:list
global:owner	externalSecretsProvider:sync
global:owner	externalSecretsProvider:create
global:owner	externalSecretsProvider:read
global:owner	externalSecretsProvider:update
global:owner	externalSecretsProvider:delete
global:owner	externalSecretsProvider:list
global:owner	externalSecret:list
global:owner	externalSecret:use
global:owner	eventBusDestination:test
global:owner	eventBusDestination:create
global:owner	eventBusDestination:read
global:owner	eventBusDestination:update
global:owner	eventBusDestination:delete
global:owner	eventBusDestination:list
global:owner	ldap:sync
global:owner	ldap:manage
global:owner	license:manage
global:owner	logStreaming:manage
global:owner	orchestration:read
global:owner	project:create
global:owner	project:read
global:owner	project:update
global:owner	project:delete
global:owner	project:list
global:owner	saml:manage
global:owner	securityAudit:generate
global:owner	sourceControl:pull
global:owner	sourceControl:push
global:owner	sourceControl:manage
global:owner	tag:create
global:owner	tag:read
global:owner	tag:update
global:owner	tag:delete
global:owner	tag:list
global:owner	user:resetPassword
global:owner	user:changeRole
global:owner	user:enforceMfa
global:owner	user:create
global:owner	user:read
global:owner	user:update
global:owner	user:delete
global:owner	user:list
global:owner	variable:create
global:owner	variable:read
global:owner	variable:update
global:owner	variable:delete
global:owner	variable:list
global:owner	projectVariable:create
global:owner	projectVariable:read
global:owner	projectVariable:update
global:owner	projectVariable:delete
global:owner	projectVariable:list
global:owner	workersView:manage
global:owner	workflow:share
global:owner	workflow:execute
global:owner	workflow:move
global:owner	workflow:create
global:owner	workflow:read
global:owner	workflow:update
global:owner	workflow:delete
global:owner	workflow:list
global:owner	folder:create
global:owner	folder:read
global:owner	folder:update
global:owner	folder:delete
global:owner	folder:list
global:owner	folder:move
global:owner	insights:list
global:owner	oidc:manage
global:owner	dataStore:list
global:owner	role:manage
global:owner	mcp:manage
global:owner	mcpApiKey:create
global:owner	mcpApiKey:rotate
global:admin	annotationTag:create
global:admin	annotationTag:read
global:admin	annotationTag:update
global:admin	annotationTag:delete
global:admin	annotationTag:list
global:admin	auditLogs:manage
global:admin	banner:dismiss
global:admin	community:register
global:admin	communityPackage:install
global:admin	communityPackage:uninstall
global:admin	communityPackage:update
global:admin	communityPackage:list
global:admin	credential:share
global:admin	credential:move
global:admin	credential:create
global:admin	credential:read
global:admin	credential:update
global:admin	credential:delete
global:admin	credential:list
global:admin	externalSecretsProvider:sync
global:admin	externalSecretsProvider:create
global:admin	externalSecretsProvider:read
global:admin	externalSecretsProvider:update
global:admin	externalSecretsProvider:delete
global:admin	externalSecretsProvider:list
global:admin	externalSecret:list
global:admin	externalSecret:use
global:admin	eventBusDestination:test
global:admin	eventBusDestination:create
global:admin	eventBusDestination:read
global:admin	eventBusDestination:update
global:admin	eventBusDestination:delete
global:admin	eventBusDestination:list
global:admin	ldap:sync
global:admin	ldap:manage
global:admin	license:manage
global:admin	logStreaming:manage
global:admin	orchestration:read
global:admin	project:create
global:admin	project:read
global:admin	project:update
global:admin	project:delete
global:admin	project:list
global:admin	saml:manage
global:admin	securityAudit:generate
global:admin	sourceControl:pull
global:admin	sourceControl:push
global:admin	sourceControl:manage
global:admin	tag:create
global:admin	tag:read
global:admin	tag:update
global:admin	tag:delete
global:admin	tag:list
global:admin	user:resetPassword
global:admin	user:changeRole
global:admin	user:enforceMfa
global:admin	user:create
global:admin	user:read
global:admin	user:update
global:admin	user:delete
global:admin	user:list
global:admin	variable:create
global:admin	variable:read
global:admin	variable:update
global:admin	variable:delete
global:admin	variable:list
global:admin	projectVariable:create
global:admin	projectVariable:read
global:admin	projectVariable:update
global:admin	projectVariable:delete
global:admin	projectVariable:list
global:admin	workersView:manage
global:admin	workflow:share
global:admin	workflow:execute
global:admin	workflow:move
global:admin	workflow:create
global:admin	workflow:read
global:admin	workflow:update
global:admin	workflow:delete
global:admin	workflow:list
global:admin	folder:create
global:admin	folder:read
global:admin	folder:update
global:admin	folder:delete
global:admin	folder:list
global:admin	folder:move
global:admin	insights:list
global:admin	oidc:manage
global:admin	dataStore:list
global:admin	role:manage
global:admin	mcp:manage
global:admin	mcpApiKey:create
global:admin	mcpApiKey:rotate
global:member	annotationTag:create
global:member	annotationTag:read
global:member	annotationTag:update
global:member	annotationTag:delete
global:member	annotationTag:list
global:member	eventBusDestination:test
global:member	eventBusDestination:list
global:member	tag:create
global:member	tag:read
global:member	tag:update
global:member	tag:list
global:member	user:list
global:member	variable:read
global:member	variable:list
global:member	dataStore:list
global:member	mcpApiKey:create
global:member	mcpApiKey:rotate
project:admin	credential:share
project:admin	credential:move
project:admin	credential:create
project:admin	credential:read
project:admin	credential:update
project:admin	credential:delete
project:admin	credential:list
project:admin	project:read
project:admin	project:update
project:admin	project:delete
project:admin	project:list
project:admin	sourceControl:push
project:admin	projectVariable:create
project:admin	projectVariable:read
project:admin	projectVariable:update
project:admin	projectVariable:delete
project:admin	projectVariable:list
project:admin	workflow:execute
project:admin	workflow:move
project:admin	workflow:create
project:admin	workflow:read
project:admin	workflow:update
project:admin	workflow:delete
project:admin	workflow:list
project:admin	folder:create
project:admin	folder:read
project:admin	folder:update
project:admin	folder:delete
project:admin	folder:list
project:admin	folder:move
project:admin	dataStore:create
project:admin	dataStore:read
project:admin	dataStore:update
project:admin	dataStore:delete
project:admin	dataStore:readRow
project:admin	dataStore:writeRow
project:admin	dataStore:listProject
project:personalOwner	credential:share
project:personalOwner	credential:move
project:personalOwner	credential:create
project:personalOwner	credential:read
project:personalOwner	credential:update
project:personalOwner	credential:delete
project:personalOwner	credential:list
project:personalOwner	project:read
project:personalOwner	project:list
project:personalOwner	workflow:share
project:personalOwner	workflow:execute
project:personalOwner	workflow:move
project:personalOwner	workflow:create
project:personalOwner	workflow:read
project:personalOwner	workflow:update
project:personalOwner	workflow:delete
project:personalOwner	workflow:list
project:personalOwner	folder:create
project:personalOwner	folder:read
project:personalOwner	folder:update
project:personalOwner	folder:delete
project:personalOwner	folder:list
project:personalOwner	folder:move
project:personalOwner	dataStore:create
project:personalOwner	dataStore:read
project:personalOwner	dataStore:update
project:personalOwner	dataStore:delete
project:personalOwner	dataStore:readRow
project:personalOwner	dataStore:writeRow
project:personalOwner	dataStore:listProject
project:editor	credential:create
project:editor	credential:read
project:editor	credential:update
project:editor	credential:delete
project:editor	credential:list
project:editor	project:read
project:editor	project:list
project:editor	projectVariable:create
project:editor	projectVariable:read
project:editor	projectVariable:update
project:editor	projectVariable:delete
project:editor	projectVariable:list
project:editor	workflow:execute
project:editor	workflow:create
project:editor	workflow:read
project:editor	workflow:update
project:editor	workflow:delete
project:editor	workflow:list
project:editor	folder:create
project:editor	folder:read
project:editor	folder:update
project:editor	folder:delete
project:editor	folder:list
project:editor	dataStore:create
project:editor	dataStore:read
project:editor	dataStore:update
project:editor	dataStore:delete
project:editor	dataStore:readRow
project:editor	dataStore:writeRow
project:editor	dataStore:listProject
project:viewer	credential:read
project:viewer	credential:list
project:viewer	project:read
project:viewer	project:list
project:viewer	projectVariable:read
project:viewer	projectVariable:list
project:viewer	workflow:read
project:viewer	workflow:list
project:viewer	folder:read
project:viewer	folder:list
project:viewer	dataStore:read
project:viewer	dataStore:readRow
project:viewer	dataStore:listProject
credential:owner	credential:share
credential:owner	credential:move
credential:owner	credential:read
credential:owner	credential:update
credential:owner	credential:delete
credential:user	credential:read
workflow:owner	workflow:share
workflow:owner	workflow:execute
workflow:owner	workflow:move
workflow:owner	workflow:read
workflow:owner	workflow:update
workflow:owner	workflow:delete
workflow:editor	workflow:execute
workflow:editor	workflow:read
workflow:editor	workflow:update
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."settings" ("key", "value", "loadOnStartup") FROM stdin;
ui.banners.dismissed	["V1"]	t
features.ldap	{"loginEnabled":false,"loginLabel":"","connectionUrl":"","allowUnauthorizedCerts":false,"connectionSecurity":"none","connectionPort":389,"baseDn":"","bindingAdminDn":"","bindingAdminPassword":"","firstNameAttribute":"","lastNameAttribute":"","emailAttribute":"","loginIdAttribute":"","ldapIdAttribute":"","userFilter":"","synchronizationEnabled":false,"synchronizationInterval":60,"searchPageSize":0,"searchTimeout":60}	t
userManagement.authenticationMethod	email	t
features.sourceControl.sshKeys	{"encryptedPrivateKey":"U2FsdGVkX19PZcUhZkP9y+l77HvOQeAk82yrVolIgbcgRcuQyqANi+Ug2l+1p/LT0pjFUOkYkK5v2ylGxqQ+rzEtS5vNKkqjrpolZA1eiuoP7mswqZx5DkrP+ZT864zJR8eeIM9u8YLRDU18EOBwDThmAGE1XSDDu6sLGvF+EhJ5M3zrsgnc7vYHfLgonADcFBR8lD9gT1wyMNnXvu/M8cAWRsoyY3iKmYw0S/j32b2kJVoMZK4VQ6r3qsP+BvIxP6cefPnOoEJAV+XnBIgdN+gZX7gfb5HuX0ZyMipXDUOZNRoWGGMhndH5PfKkO4Ruk4wjVVZZ7w16YRsblHZg1eCT8KaisBKZ2ZWebSk6kzdq1HvDp3oNdUhu/ufMpRsJ4wPfygaLTuxfhqTEvbIwppe9xwhFQEaT6faKdLzLITTxiG3sR/M10Qe+uCIg+5lwkTK3y3kYWk6F+mwJbZ2kvScfufQ2KJK11p4vDrLTziKLVGywVCqRaJcoCaJVP1FQw1NZM/PWYy1AS5h67/7kBb/veGh8KTIyOF8a1BRITBLG2GeN7dVRM2T1WzftvSil","publicKey":"ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHnh5dDn0jgcayqq8F/npomWXVrV+0OrMSa+j1vrYMUL n8n deploy key"}	t
features.sourceControl	{"branchName":"main","connectionType":"ssh","keyGeneratorType":"ed25519"}	t
userManagement.isInstanceOwnerSetUp	true	t
license.cert	eyJsaWNlbnNlS2V5IjoiLS0tLS1CRUdJTiBMSUNFTlNFIEtFWS0tLS0tXG5DY2Zhb2JGV0dDRVYxeWw2SW5XOW9ZWDBnYUVVOXRkU1VVRU5UTUpocldDR3grSjdoT3JSRUZVKzVoVnIvK2VGXG4rd1RPaVRnTnZ5TjExcTltRFI1MFVneGN0THNoNkkxMktNa2RtNWIxSE1uQ0pQM0x1YXlhVUVBaDhFNUpiNGhWXG5HNXhwTHM2Y0xqbHRZYlhKcC85dW9iTXR5VnhCRnh3bm16RWp3TmFNTm1nU0lWN1hIK1h5M0RtWWVpbHBwTWEzXG4yNFdvbUZCTFpJcGJSWWJONDJWZW54cFlFM0dTblByRWNJWkl2c1ZaZDl6NU1scmpZekk5alZDenNLaDRuQ1pBXG5ZcFVMbU8rMm83MUFhcU5rRklxdzVWT2VlTjFHV2dMN3piTjZKd2xGQzhaSVFMY2NxczFIR3Z1MG9iYktNR2g0XG5LQksveFVkalM4MjR4aHdqM25PaXJRPT18fFUyRnNkR1ZrWDEvOVdOcndOSTVWOXAvMXl1aVRQK3picGN6N3NYXG5icDMwaDBYZk04K0lzMWJZa2JqQ2hacEhhSmlRbDcrVXBhcktkRFFIak9ULzlyRnVmWWRieUpKMTBmNEVGR2s4XG5qV1hCamlOcWJYemgyTlRNL1ROM3NEbHVlTzFpNVpKM1BQejQvMkZBdlZwT3NUR1lnckxvV0tJK1poMC95b0gzXG5mdDNCdDJXYmRPaERWU1psWmw2MVlHUUNOdFZxRFUyOThBRU1CRDhzd3ZiZE1DREwwdndZTnJPN3JocURUbjk0XG56a2ZCMVlEdXhmSG1lODRsMko3aXlnVVc1S3ZjYUd6ZU1keGdTTk1jTnhRZUsrak5HNkpSRWZlalBoVkcwNU1GXG5uTHY4VmxMYnh1dlFQemh1RXFFa1NrUlZwN0wwOHZRWnRLSk9TWEMyeVNHS3hueUdnYTVWNkVieFVhL2grSXR3XG5rTHFjeGdMMEtScnVOeGpCTFRpQ1doVkgwWGdBaTJiZmNlT1RWOGxpeHZZeEtOdEtQczNnRytHeDlucnh4WkZTXG5NdHhZeTE3eno3d0NZc084TzBqTytFWEg0ZC9ucjV6VWVxQXRMYXA0cldEZkNnK0hIbWJ6N3ducnI5QTFpb1NZXG4zZTdqQWZ5aEUyaytyUGxwUDJWRC9ZZjlwQURaRjBGNnQwTU1hUlR2WVVmZGE4ZHR4VmRYdFJyVXpYbkpLWkJGXG5OaC81TUVacmFPMUF5SW1ZZ2RqNUo5T0V4WHl2Z2MyeFhBQkl3aXZpaGFLbnVJWlB0cmdJRTdlU3d1Q2R1OFM3XG4ycmZINEMxZnRCVmNFNVJWRWZGdFpBMURlaHpVejk3aERRb1ZXUlN0OGN1QUQ4TG9zY2pnbGxkbTh6d3NpUkZZXG4ybXMyVjcwN2xlQzNRTDk0bkxWU1p6bUNjbEw3U29YRTRCTTBHVHhqbWV2MFRwR0pBR09yZFNxZ3JEa0F6bTZ6XG5UcWhNUW0xZFU1NENwZWhOeW84QitwdlREbG5CT29OTHdub2VsRlNwS0hoNnR1Y09QdVhPc2NKTkRaZXdkR0h6XG5YRFVwaE9iMDdROUtRVnk0YVU2d013OExUVmhsd3VJWDFaVEwzVyt3UzhpSTY4amlsS0RQNW1XTFdWdDBnYnlPXG5tcWh6eXF0RUdhRW5MZzNTSExOdE1waEFBTThrYithWmNUckhFR2VlWWFGUkJZVjQ4TDRvY1JSWGh0VDJHa2NtXG5lOXRuMkQ3NThyOHYrRW9ockNHQnJqQk1iN2hEUENwRlFJZlM3ZDZFL0N0K0tWUFg4bmhHbHVjZWVVRHBTSDJlXG5xOFJpNEZRbER6SkhRRmsrSmtQYmxKclRlQlRDek5nSEdaT0JGQnhCdE4wMHBwNFpDWUpHM0IvUTRKMGJ3ei94XG5GT1VNZFoyOHI0RmtlS3QxdFE3cmN1ZTVxYTNxaSt2T3lwdzQ3TGRIT1U3czlMNUdQdThuTTlPckQ2VUtLZ01FXG5vaFZSWTFHaXhtYmZmdTBubGI2WmNVNTRaSzBJckRnclVVdEk1SGYvQk5reFVEdTZaRnJtd0tKOVVEcUZqRVAwXG55aXRiZ21QbjB0THhVUVR6TThxdWdPUEFteDJIaTZyelRZcUV4WWN6VTdCeTVxUmVDL1RKVGk5WXpCWmxPb2JMXG5kdktHWFVtWWl3R3VadGtnbkJJMUVaMXVHbUdrSDgwQ1JZaEw5UG5lTzUxSG1IdThBcmhvRFdnVmQ2bTFCM1BoXG40R2ViZzZYNVErdTVMTkZibGVCemNDTENwYkxDL1JMNTgwbWhESzFQM05vRmNWN2dqL1BCNWpJYmZCU2ZuWCs2XG51ZnJpeTZoU2taYWJhMjB4TU9XLzZET2RoeW5oams2cDVYcUMyYVZIbEJuZEpSUGRPbE9qVmdOUm9aUldnZkg4XG5PRGVLNlJoZHZFS0w4NUh1UnBrbHV5MEVscksveUcxbUZOTDFhOW11elpFODJWMnJVMGVpaHVqcER4YTlQdTdiXG5FY1FVSm10K2xMUHZ2bEJhc2d5V05IUXQ5UFRKdFR1WVJ1RHVuWUpnRVFNRHRndFpJbHBTOE5VNVU0TzdhNFM1XG53ZkFyNFYySFFTZFNpTE85RjdaRGZXUy9wV3BXb05ZRW05bXhYQjJoZGFQSG5lc2tvVXIzZWpPaFVBVTduQUtsXG56K1FCeEZVVmo5MVJ1L1YzSDBpV3NKYlh5b05aeXhKUmZocEhtYklURHExYWdKOXRvT0k2b1I4Z25XaTZhWEt6XG5NYUdBUmlLQ2MrWGQ1Qm83Wm0xdWpmLzFnUUNYRzhZYmE1NGR3ZDhmMHBSMVBDR1VqeWRDVEprWXk3MzhIVVZXXG5qaUxoSm5sckNnR2JuQ0NWZGpmMlY3S0JnQ0tHckRiYUxJY3VBclBSdnB3M2lpSGhjcDVWMG9KSmQyYURwaEdMXG5xNTY5OS9Wa0JnRmFaZ25la3Exb0crQmp1K2wvWjhGUC9wZnM5S2pNTFNzaUhGeVA5dkRGM3Q2R0l4b2hIMUtHXG5TL0JnUVlBaU9IUlJYVmFValZaV1ZVcWpwOENiMDJBTVIrNDRENU4vYUNCYk9qdjNjdFF2TFE0K1B6WFR6V0JnXG5ycEJjZHRXSDBCVG1pRllLYTFkc0dIeXZSVTNDVWh6ZWtlT0M2L2hTMFp6M3ZNUkl1TFYyc2JIcXMxZXFFZlBlXG51UXl2WVROTjFwOFdFdFVlVWpMcjA4dUtSdk1McE5OZmNmZEluS2xHNS9FQTRYZ1B6YlZ2NXhnL2hkRVNNeEtVXG5hd01ZOHZlenpBQjZ0ZmNFSHYrNThwUjJOZVlEeUVITjNJblgxeFA5bUl5eDZLdTB4cFVkRy9XRllpNHJSREM0XG5yLy9Dc0NlS0k1Ymw3T1RaVGhabVJFYnkvMEJ2RVNhYUdvcVhvM244Tk0zKzI4ekVoVE9XalZCU2xCRVd6My9LXG5wYmFJUjNSTkRYWHFKeDVGMmdYcVAxdUNRbzN3clJkcFprZHUrSU4ydHhHWnNiUDllLzhsSEEvK1pPaDZNTFF0XG5DOVAwRWttTmF6Sk9MbkpjRW5sM3dZV3I1eXJNdmlmTXpXZjQwdURZUzBUZ3owZUE9PXx8V2JvbXppQllXQjEyXG5ORU5PcVoyMnVHbEk0NWcvM3RVS1FVNkFNemN3S0hpQ01lSTJLRG01VjFicmNPVUVnaW0yTnVlVFYzdUIvWklpXG5YVm9HMERBU1BIcmpiL05UbzVZQ1pMVE55a005VW9sNkhVcG52eElpUlRXdDZlR0RjVVNTY2VMN0FkY3gzK1BrXG4xbitHQVhqUXI3Si9semtBSC9pY3ZUazdtMUttWi9qbTZDZloyd3pKNGJJeFdScTMwUUxURllSRHhHbjJ4dndHXG5mb2lYeEJVeW9oSzhldHJBNTZXcFl3b2FIMmVGWmtvbHpyUkpQSDk3M2J5cFp6cCszVU9XOVM0dTA2ZGV3R09MXG5ZYzBTV2p3Q20xSGtzVFc3RkxkdUxaMUk2cEdxVXhXS1UzbVFxWjZtYzJjTUZJajdUa2sxL20rTTdkOVhTUFZtXG5YUWp3OXdBYVBRPT1cbi0tLS0tRU5EIExJQ0VOU0UgS0VZLS0tLS0iLCJ4NTA5IjoiLS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tXG5NSUlFRERDQ0FmUUNDUUNxZzJvRFQ4MHh3akFOQmdrcWhraUc5dzBCQVFVRkFEQklNUXN3Q1FZRFZRUUdFd0pFXG5SVEVQTUEwR0ExVUVDQXdHUW1WeWJHbHVNUTh3RFFZRFZRUUhEQVpDWlhKc2FXNHhGekFWQmdOVkJBTU1EbXhwXG5ZMlZ1YzJVdWJqaHVMbWx2TUI0WERUSXlNRFl5TkRBME1UQTBNRm9YRFRJek1EWXlOREEwTVRBME1Gb3dTREVMXG5NQWtHQTFVRUJoTUNSRVV4RHpBTkJnTlZCQWdNQmtKbGNteHBiakVQTUEwR0ExVUVCd3dHUW1WeWJHbHVNUmN3XG5GUVlEVlFRRERBNXNhV05sYm5ObExtNDRiaTVwYnpDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDXG5BUW9DZ2dFQkFNQk0wNVhCNDRnNXhmbUNMd2RwVVR3QVQ4K0NCa3lMS0ZzZXprRDVLLzZXaGFYL1hyc2QvUWQwXG4yMEo3d2w1V2RIVTRjVkJtRlJqVndWemtsQ0syeVlKaThtang4c1hzR3E5UTFsYlVlTUtmVjlkc2dmdWhubEFTXG50blFaZ2x1Z09uRjJGZ1JoWGIvakswdHhUb2FvK2JORTZyNGdJRXpwa3RITEJUWXZ2aXVKbXJlZjdXYlBSdDRJXG5uZDlEN2xoeWJlYnloVjdrdXpqUUEvcFBLSFRGczhNVEhaOGhZVXhSeXJwbTMrTVl6UUQrYmpBMlUxRkljdGFVXG53UVhZV2FON3QydVR3Q3Q5ekFLc21ZL1dlT2J2bDNUWk41T05MQXp5V0dDdWxtNWN3S1IzeGJsQlp6WG5CNmdzXG5Pbk4yT0FkU3RjelRWQ3ljbThwY0ZVcnl0S1NLa0dFQ0F3RUFBVEFOQmdrcWhraUc5dzBCQVFVRkFBT0NBZ0VBXG5sSjAxd2NuMXZqWFhDSHVvaTdSMERKMWxseDErZGFmcXlFcVBBMjdKdStMWG1WVkdYUW9yUzFiOHhqVXFVa2NaXG5UQndiV0ZPNXo1ZFptTnZuYnlqYXptKzZvT2cwUE1hWXhoNlRGd3NJMlBPYmM3YkZ2MmVheXdQdC8xQ3BuYzQwXG5xVU1oZnZSeC9HQ1pQQ1d6My8yUlBKV1g5alFEU0hYQ1hxOEJXK0kvM2N1TERaeVkzZkVZQkIwcDNEdlZtYWQ2XG42V0hRYVVyaU4wL0xxeVNPcC9MWmdsbC90MDI5Z1dWdDA1WmliR29LK2NWaFpFY3NMY1VJaHJqMnVGR0ZkM0ltXG5KTGcxSktKN2pLU0JVUU9kSU1EdnNGVUY3WWRNdk11ckNZQTJzT05OOENaK0k1eFFWMUtTOWV2R0hNNWZtd2dTXG5PUEZ2UHp0RENpMC8xdVc5dE9nSHBvcnVvZGFjdCtFWk5rQVRYQ3ZaaXUydy9xdEtSSkY0VTRJVEVtNWFXMGt3XG42enVDOHh5SWt0N3ZoZHM0OFV1UlNHSDlqSnJBZW1sRWl6dEdJTGhHRHF6UUdZYmxoVVFGR01iQmI3amhlTHlDXG5MSjFXT0c2MkYxc3B4Q0tCekVXNXg2cFIxelQxbWhFZ2Q0TWtMYTZ6UFRwYWNyZDk1QWd4YUdLRUxhMVJXU0ZwXG5NdmRoR2s0TnY3aG5iOHIrQnVNUkM2aWVkUE1DelhxL001MGNOOEFnOGJ3K0oxYUZvKzBFSzJoV0phN2tpRStzXG45R3ZGalNkekNGbFVQaEtra1Vaa1NvNWFPdGNRcTdKdTZrV0JoTG9GWUtncHJscDFRVkIwc0daQTZvNkR0cWphXG5HNy9SazZ2YmFZOHdzTllLMnpCWFRUOG5laDVab1JaL1BKTFV0RUV0YzdZPVxuLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLSJ9	f
\.


--
-- Data for Name: shared_credentials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shared_credentials" ("credentialsId", "projectId", "role", "createdAt", "updatedAt") FROM stdin;
RA6c0BOIan2OR7lZ	e8RpyUBIAxTYUpu5	credential:owner	2025-10-16 16:37:33.579+00	2025-10-16 16:37:33.579+00
\.


--
-- Data for Name: shared_workflow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shared_workflow" ("workflowId", "projectId", "role", "createdAt", "updatedAt") FROM stdin;
rqlUyMiEmIGvzbdF	e8RpyUBIAxTYUpu5	workflow:owner	2025-10-16 16:29:34.384+00	2025-10-16 16:29:34.384+00
CVzrDFsnctC7SzNS	e8RpyUBIAxTYUpu5	workflow:owner	2025-10-16 16:29:38.221+00	2025-10-16 16:29:38.221+00
\.


--
-- Data for Name: test_run; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."test_run" ("id", "workflowId", "status", "errorCode", "errorDetails", "runAt", "completedAt", "metrics", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: test_case_execution; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."test_case_execution" ("id", "testRunId", "executionId", "status", "runAt", "completedAt", "errorCode", "errorDetails", "metrics", "createdAt", "updatedAt", "inputs", "outputs") FROM stdin;
\.


--
-- Data for Name: user_api_keys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_api_keys" ("id", "userId", "label", "apiKey", "createdAt", "updatedAt", "scopes", "audience") FROM stdin;
\.


--
-- Data for Name: variables; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."variables" ("key", "type", "value", "id", "projectId") FROM stdin;
\.


--
-- Data for Name: webhook_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."webhook_entity" ("webhookPath", "method", "node", "webhookId", "pathLength", "workflowId") FROM stdin;
\.


--
-- Data for Name: workflow_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_history" ("versionId", "workflowId", "authors", "createdAt", "updatedAt", "nodes", "connections") FROM stdin;
dc3dff43-103d-4a23-aae0-6ff5172f8433	rqlUyMiEmIGvzbdF	Fernan Bambico	2025-10-16 16:29:36.384+00	2025-10-16 16:29:36.384+00	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.2,"position":[0,0],"id":"2de74a8d-0902-46e1-9259-058f2175b593","name":"Schedule Trigger"}]	{}
155a3142-aace-4d7c-85cf-5998aec11270	CVzrDFsnctC7SzNS	Fernan Bambico	2025-10-16 16:29:39.891+00	2025-10-16 16:29:39.891+00	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.2,"position":[0,0],"id":"2de74a8d-0902-46e1-9259-058f2175b593","name":"Schedule Trigger"}]	{}
\.


--
-- Data for Name: workflow_statistics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_statistics" ("count", "latestEvent", "name", "workflowId", "rootCount") FROM stdin;
1	2025-10-16 16:29:43.656+00	manual_success	rqlUyMiEmIGvzbdF	0
1	2025-10-16 16:40:37.228+00	data_loaded	CVzrDFsnctC7SzNS	1
2	2025-10-16 16:40:38.248+00	manual_success	CVzrDFsnctC7SzNS	0
2	2025-10-16 16:45:54.542+00	manual_error	CVzrDFsnctC7SzNS	0
\.


--
-- Data for Name: workflows_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflows_tags" ("workflowId", "tagId") FROM stdin;
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id", "type") FROM stdin;
\.


--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_analytics" ("id", "type", "format", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata", "level") FROM stdin;
\.


--
-- Data for Name: prefixes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."prefixes" ("bucket_id", "name", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: auth_provider_sync_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."auth_provider_sync_history_id_seq"', 1, false);


--
-- Name: execution_annotations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_annotations_id_seq"', 1, false);


--
-- Name: execution_entity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_entity_id_seq"', 5, true);


--
-- Name: execution_metadata_temp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_metadata_temp_id_seq"', 1, false);


--
-- Name: insights_by_period_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_by_period_id_seq"', 1, false);


--
-- Name: insights_metadata_metaId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_metadata_metaId_seq"', 1, false);


--
-- Name: insights_raw_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_raw_id_seq"', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."migrations_id_seq"', 101, true);


--
-- PostgreSQL database dump complete
--

-- \unrestrict Daceayj4dWznTfQUH3Gffxi3KSQzQXRNJIVLWZEGdB37tk9WnGrCTUPU6ZjPdwK

RESET ALL;
