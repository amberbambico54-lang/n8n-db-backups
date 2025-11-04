SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict ZGDemzQbPkR5fe8zpdWR6brP5EBp8XnHRAj1AAxBfCLcCUDMNm9zhVzgWJgaFui

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
5a4961b6-3a89-432a-b7c1-90d805069b4f	amberbambico.54@gmail.com	Fernan	Bambico	$2a$10$speYYXYPVYv1eZHzUaKozODBdrev3InCIjJpaBC3pmW/6uqSDpa7q	{"version":"v4","personalization_survey_submitted_at":"2025-10-16T15:50:30.876Z","personalization_survey_n8n_version":"1.115.3","automationGoalDevops":["ci-cd","cloud-infrastructure-orchestration","data-syncing","incident-response","monitoring-alerting","reporting","other","ticketing-systems-integrations"],"automationGoalDevopsOther":"education","companySize":"personalUser","companyType":"education","role":"it","reportedSource":"youtube"}	2025-10-16 15:42:52.513+00	2025-11-01 03:27:39.017+00	{"userActivated": false}	f	f	\N	\N	2025-11-01	global:owner
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
Airtable Personal Access Token account 2	U2FsdGVkX19JMVrqWe+O7kNhSHh5t7n2dLU6s9kd6AMhkgohKCqTnQG+YLzkaM5h7sSnpZK/6RUYW251dEcCtg8eKoFO3bmDJnuXlnqG22fKGvaxsAIX6YKxYzttgSurjFExYu4fI8HYr3glZQ4wePilpt3C0sOzuhFWc714mCc=	airtableTokenApi	2025-10-17 05:28:48.586+00	2025-10-17 05:28:48.329+00	yX9lezaEQv8KPjgH	f
Youtube test	U2FsdGVkX19O3UtCZSlDE3jgnLzRTgWDPti9xBu8v3ZGRLWY0oWbqgWeGUzR7WqiTK4ekm3BbV4H8TwwariZNNnCDiyiGGa1g8DYUtAiT1y7I9ll4z4cQiwgh297dX+MOd+mY0kMR1+ESFGbFXRMeHm9tkVbKVmUW9iBv0rFfT0R6uo6WMP1IBKrR28hFk6xJSeOZTitgTLZw2plAMeSjnZ/YLGNvgOi+UCJRSfIhZsdTNMqY0fPexx94Ze1o9L3s5tzSqEr3s1xHXwl42UV8Q==	openAiApi	2025-10-26 14:43:21.314+00	2025-10-26 14:54:46.222+00	ldgD9ijpvN4RpuOR	f
Google Gemini(PaLM) Api account	U2FsdGVkX1/wNWsIBRvP4VfnNdmvKPWG/5HZsAFcAyOHrNf7kP7HrP0T6jI85D21bH6Utwg5snSncTGObREhPQMt9+h3Gi81RHk7776CBi4=	googlePalmApi	2025-10-26 15:01:36.668+00	2025-10-26 15:01:36.476+00	XGvBpUk4jkPH5F8n	f
Gmail account	U2FsdGVkX1/7CgMS8TAkx5BiaRpy6sVVLt9g+lA7Fb2GEqRGbCiPH5EfDo3G6DhLMlEsexDt/KgAGP1aFJTF76Tv8lIYK62gtaU5BY3pgvkLWIUEOe91Au/llDT5xdaoWEbI7iE5Wukn/Kk39qZv9uALDrCL8nAVjgf4YRCU8K6aXdmKGVvANv0HbWca86ZIDdus1//5MwSM0KKUO6cUbT1OUauuzL4pM1wrGtsND17qreuPZfJAF2OR0d/gdG+vKPbIIVkWyBion+iNad1bkx0UjWPJmVJRHGVi1llFoQezO4Hg1u/xiDny4HufyF4nLJ3pvjbYA2TiEpQlWcL2nhFDSFjIF/xQg8LvwDnplgrbKvbjyabbQVUmK4GMvBTFdaAJyRfzvoe14ajrFmZvOg0eZAphJygssi2Peb2ZPzM9Ckc8GLjx6DkndKOnDX9laFE15EZVQgCX5xONAq7e0RC4ljy0FMrhof6TsO1zMkvDp/NTk2BLmZPBq/l2g2BwGxDlC4OT2QhhOwo0DKqAZqagnHOiFrUXQn41lOfO08feFlLOgeC98RkcqeBOngCoplpqgvzBm43oUCw0upJAr7Pc0r4Hpx55TLEBbmagNbCYYIF6kQXghbHT/n53g+Y7wtDBvJdRLKhsVwwOCDBu3GrBbm0l5BiBFtMtiJG1mLE1+91XzzwwglPbv+NL5mQ01pcAJh4VRoOdtvKu0mFh2kyxO1b0U4+6ss1sqtBCS8MVgTz7sUzSIf/tWYNXTU1260UJwLhIWUeVSlW0+QnZAKcwxHpHzffl/FTCE31FE87nihXFocouBiPIBA607d5/WNp7Q+PKr5vslkWPKYi9KdRS9UyWvt7QPU2ygKD7sJTa9k365x6kvS2N0mClozW7o+WN0P/13CEAUG7OhvyEUXMweWweHg9q1pCMEXB/DG4Ug0UrRpdJizpN0zSfAaOpN14slmF6fSJ29r6Nfk7FC2C0dNtc9DRtn8WqDcJP+0VL+AqwREYNbjpIHNXVr/WiLA4cssQGNRRz7JJH/pLDMWKYwbu84LKV2UlmdwFFbWddA+NFj5F2pbwC3eFAPAqS5rIqEHP6DvEQjwcu8pMt4oAEVeIghkA9RlTa3ce79NZKjBe/vlN1TV+XciLP3tDiiT5LVuw5xqph/SH2ve8im3pHTazrUwdSlpEdsAsaE32i4yrPROLS88f6Jsig1wRghpGEbGF7UzeLvLTS3bYaHrcomhyMTQML75bpZsGoZRGVkj/eNnFHpko7+lS6jquahPeDZfZs4zhaPIHznO/34B37+BhprnW6cm7XXyUuhUdr7qZwNdjQxZVQ7igyVhRCtxe5omtaH6kGpLCcbxV7lSF9oAgADmExvzwcwgL0mPGBEJR6Cmw1ucQBeojhfbJr6QAoj3z9SiinJqIo9fnfrkGaiRCRZMX19X4hEPxsOsCqdBC0LbxiVvs4BJ22gpsyCbnktmUm5JhT6/SkaLwX0ZaxDQILsG2Z4Hrggf3QCsJ6cVvII11yYhOPqLtjq4rATsGornf99wKuHRltmNAw+Yj+tn84SrmMFyhhzAZfz/Xteem2GfgGK93IPvGQNoj4Fr7KXy6kwO+bxpBhbKjdJd6hzSy01q8+oIoh2DiWVTB6MK8cJznQIlBzI4YTPKzK+releziM1ODlr1l9Lv0GC/bNs82n3vcSpKUNM9KZibBXXPYH/V9e+Nh6Zg+vXMtx8E0JpS3V73ZG8h9jxYWeeUdhZY2ygb+rMod00iWFhq4=	gmailOAuth2	2025-10-26 13:57:54.037+00	2025-10-31 13:27:39.186+00	V6F4PoZ5qguyZtAe	f
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
1.N8n Course	f	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"2807691f-9cbc-4ae0-b99f-77abaff9ea3e","name":"When clicking ‘Execute workflow’"},{"parameters":{"sendTo":"amberbambico.54@gmail.com","subject":"hello","message":"hello","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.1,"position":[560,0],"id":"82b41fe9-0588-4c8c-aa14-a232fd07ec17","name":"Send a message","webhookId":"54d7bf6c-3c19-49a6-abd4-7233cb96feb4","credentials":{"gmailOAuth2":{"id":"V6F4PoZ5qguyZtAe","name":"Gmail account"}}},{"parameters":{"content":"## 1.\\n**Double click** to edit me. [Guide](https://docs.n8n.io/workflows/sticky-notes/)","width":448},"type":"n8n-nodes-base.stickyNote","position":[-16,-192],"typeVersion":1,"id":"1fa10d5e-c2c2-41b6-b6c5-9b32e7998bbc","name":"Sticky Note"},{"parameters":{"operation":"appendOrUpdate","documentId":{"__rl":true,"mode":"list","value":""},"sheetName":{"__rl":true,"mode":"list","value":""}},"type":"n8n-nodes-base.googleSheets","typeVersion":4.7,"position":[208,0],"id":"72f88487-827c-409c-a9db-6d0b93b75055","name":"Append or update row in sheet"}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Append or update row in sheet","type":"main","index":0}]]},"Append or update row in sheet":{"main":[[{"node":"Send a message","type":"main","index":0}]]}}	2025-10-16 16:29:38.221+00	2025-10-31 13:29:29.787+00	{"executionOrder":"v1"}	{"node:Schedule Trigger":{"recurrenceRules":[]}}	{}	46327ea6-6714-42a4-97d0-0ac05253e45f	1	CVzrDFsnctC7SzNS	{"templateCredsSetupCompleted":true}	\N	f
My workflow	f	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.2,"position":[0,0],"id":"2de74a8d-0902-46e1-9259-058f2175b593","name":"Schedule Trigger"}]	{}	2025-10-16 16:29:34.384+00	2025-10-26 12:12:30.517+00	{"executionOrder":"v1"}	{"node:Schedule Trigger":{"recurrenceRules":[]}}	{}	dc3dff43-103d-4a23-aae0-6ff5172f8433	1	rqlUyMiEmIGvzbdF	\N	\N	f
\.


--
-- Data for Name: execution_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_entity" ("id", "finished", "mode", "retryOf", "retrySuccessId", "startedAt", "stoppedAt", "waitTill", "status", "workflowId", "deletedAt", "createdAt") FROM stdin;
32	t	manual	\N	\N	2025-10-31 13:27:37.217+00	2025-10-31 13:27:39.943+00	\N	success	CVzrDFsnctC7SzNS	\N	2025-10-31 13:27:35.381+00
23	f	manual	\N	\N	2025-10-26 13:44:46.423+00	2025-10-26 13:44:47.221+00	\N	error	CVzrDFsnctC7SzNS	\N	2025-10-26 13:44:44.186+00
24	f	manual	\N	\N	2025-10-26 14:20:11.355+00	2025-10-26 14:20:12.066+00	\N	error	CVzrDFsnctC7SzNS	\N	2025-10-26 14:20:10.517+00
25	t	manual	\N	\N	2025-10-26 14:21:23.841+00	2025-10-26 14:21:25.006+00	\N	success	CVzrDFsnctC7SzNS	\N	2025-10-26 14:21:23.016+00
26	t	manual	\N	\N	2025-10-26 14:23:58.3+00	2025-10-26 14:23:59.961+00	\N	success	CVzrDFsnctC7SzNS	\N	2025-10-26 14:23:57.482+00
27	t	manual	\N	\N	2025-10-26 14:38:10.796+00	2025-10-26 14:38:11.135+00	\N	success	CVzrDFsnctC7SzNS	\N	2025-10-26 14:38:08.797+00
28	f	manual	\N	\N	2025-10-26 14:51:46.004+00	2025-10-26 14:51:49.201+00	\N	error	CVzrDFsnctC7SzNS	\N	2025-10-26 14:51:45.17+00
29	f	manual	\N	\N	2025-10-26 14:54:55.933+00	2025-10-26 14:54:57.53+00	\N	error	CVzrDFsnctC7SzNS	\N	2025-10-26 14:54:55.093+00
30	t	manual	\N	\N	2025-10-26 15:08:02.495+00	2025-10-26 15:08:05.139+00	\N	success	CVzrDFsnctC7SzNS	\N	2025-10-26 15:08:01.628+00
31	t	manual	\N	\N	2025-10-26 15:11:09.835+00	2025-10-26 15:11:12.395+00	\N	success	CVzrDFsnctC7SzNS	\N	2025-10-26 15:11:09.005+00
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
25	{"id":"CVzrDFsnctC7SzNS","name":"1.N8n Course","active":false,"nodes":[{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"2807691f-9cbc-4ae0-b99f-77abaff9ea3e","name":"When clicking ‘Execute workflow’"},{"parameters":{"preBuiltAgentsCalloutGmail":"","authentication":"oAuth2","resource":"message","operation":"send","sendTo":"amberbambico.54@gmail.com","subject":"Hello World","emailType":"html","message":"Hello World","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.1,"position":[208,0],"id":"82b41fe9-0588-4c8c-aa14-a232fd07ec17","name":"Send a message","webhookId":"54d7bf6c-3c19-49a6-abd4-7233cb96feb4","credentials":{"gmailOAuth2":{"id":"V6F4PoZ5qguyZtAe","name":"Gmail account"}}},{"parameters":{"content":"## 1.\\n**Double click** to edit me. [Guide](https://docs.n8n.io/workflows/sticky-notes/)","height":160,"width":448,"color":1},"type":"n8n-nodes-base.stickyNote","position":[-16,-192],"typeVersion":1,"id":"1fa10d5e-c2c2-41b6-b6c5-9b32e7998bbc","name":"Sticky Note"}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Send a message","type":"main","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"4"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12"},"Send a message",["13","4"],{"When clicking ‘Execute workflow’":"14","Send a message":"15"},{},{},[],{},{},{},"When clicking ‘Execute workflow’",["16"],["17"],{"startTime":1761488411689,"executionIndex":0,"source":"18","hints":"19","executionTime":2,"executionStatus":"20","data":"21"},{"startTime":1761488484176,"executionIndex":1,"source":"22","hints":"23","executionTime":829,"executionStatus":"20","data":"24"},[],[],"success",{"main":"25"},["26"],[],{"main":"27"},["28"],{"previousNode":"13","previousNodeOutput":0,"previousNodeRun":0},["29"],["30"],["31"],{"json":"32","pairedItem":"33"},{"json":"34","pairedItem":"35"},{},{"item":0},{"id":"36","threadId":"36","labelIds":"37"},{"item":0},"19a20e53886b1a01",["38","39","40"],"UNREAD","SENT","INBOX"]
24	{"id":"CVzrDFsnctC7SzNS","name":"1.N8n Course","active":false,"nodes":[{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"2807691f-9cbc-4ae0-b99f-77abaff9ea3e","name":"When clicking ‘Execute workflow’"},{"parameters":{"preBuiltAgentsCalloutGmail":"","authentication":"oAuth2","resource":"message","operation":"send","sendTo":"amberbambico.54@gmail.com","subject":"Hello World","emailType":"html","message":"Hello World","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.1,"position":[208,0],"id":"82b41fe9-0588-4c8c-aa14-a232fd07ec17","name":"Send a message","webhookId":"54d7bf6c-3c19-49a6-abd4-7233cb96feb4","credentials":{"gmailOAuth2":{"id":"V6F4PoZ5qguyZtAe","name":"Gmail account"}}},{"parameters":{"content":"## 1.\\n**Double click** to edit me. [Guide](https://docs.n8n.io/workflows/sticky-notes/)","height":160,"width":448,"color":1},"type":"n8n-nodes-base.stickyNote","position":[-16,-192],"typeVersion":1,"id":"1fa10d5e-c2c2-41b6-b6c5-9b32e7998bbc","name":"Sticky Note"}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Send a message","type":"main","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"4","error":"8"},{"contextData":"9","nodeExecutionStack":"10","metadata":"11","waitingExecution":"12","waitingExecutionSource":"13"},"Send a message",["14","4"],{"When clicking ‘Execute workflow’":"15","Send a message":"16"},{},{"level":"17","tags":"18","timestamp":1761488412055,"context":"19","functionality":"20","name":"21","node":"22","messages":"23","message":"24","stack":"25"},{},["26"],{},{},{},"When clicking ‘Execute workflow’",["27"],["28"],"warning",{"reWrapped":true},{"itemIndex":0},"regular","NodeOperationError",{"parameters":"29","type":"30","typeVersion":2.1,"position":"31","id":"32","name":"4","webhookId":"33","credentials":"34"},["35"],"Unable to sign without access token (item 0)","NodeOperationError: Unable to sign without access token (item 0)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file+packages+nodes-base_@aws-sdk+credential-providers@3.808.0_asn1.js@5_afd197edb2c1f848eae21a96a97fab23/node_modules/n8n-nodes-base/nodes/Google/Gmail/v2/GmailV2.node.ts:834:11)\\n    at processTicksAndRejections (node:internal/process/task_queues:105:5)\\n    at WorkflowExecute.executeNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_08b575bec2313d5d8a4cc75358971443/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1093:8)\\n    at WorkflowExecute.runNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_08b575bec2313d5d8a4cc75358971443/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1274:11)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_08b575bec2313d5d8a4cc75358971443/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1676:27\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_08b575bec2313d5d8a4cc75358971443/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:2292:11",{"node":"36","data":"37","source":"38"},{"startTime":1761488411689,"executionIndex":0,"source":"39","hints":"40","executionTime":2,"executionStatus":"41","data":"42"},{"startTime":1761488411692,"executionIndex":1,"source":"43","hints":"44","executionTime":373,"executionStatus":"45","error":"46"},{"preBuiltAgentsCalloutGmail":"47","authentication":"48","resource":"49","operation":"50","sendTo":"51","subject":"52","emailType":"53","message":"52","options":"54"},"n8n-nodes-base.gmail",[208,0],"82b41fe9-0588-4c8c-aa14-a232fd07ec17","54d7bf6c-3c19-49a6-abd4-7233cb96feb4",{"gmailOAuth2":"55"},"Unable to sign without access token",{"parameters":"56","type":"30","typeVersion":2.1,"position":"57","id":"32","name":"4","webhookId":"33","credentials":"58"},{"main":"59"},{"main":"43"},[],[],"success",{"main":"60"},["61"],[],"error",{"level":"17","tags":"18","timestamp":1761488412055,"context":"19","functionality":"20","name":"21","node":"22","messages":"23","message":"24","stack":"25"},"","oAuth2","message","send","amberbambico.54@gmail.com","Hello World","html",{},{"id":"62","name":"63"},{"preBuiltAgentsCalloutGmail":"47","authentication":"48","resource":"49","operation":"50","sendTo":"51","subject":"52","emailType":"53","message":"52","options":"64"},[208,0],{"gmailOAuth2":"65"},["66"],["67"],{"previousNode":"14"},"V6F4PoZ5qguyZtAe","Gmail account",{},{"id":"62","name":"63"},["68"],["69"],{"json":"70","pairedItem":"71"},{"json":"70","pairedItem":"72"},{},{"item":0},{"item":0}]
26	{"id":"CVzrDFsnctC7SzNS","name":"1.N8n Course","active":false,"nodes":[{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"2807691f-9cbc-4ae0-b99f-77abaff9ea3e","name":"When clicking ‘Execute workflow’"},{"parameters":{"preBuiltAgentsCalloutGmail":"","authentication":"oAuth2","resource":"message","operation":"send","sendTo":"amberbambico.54@gmail.com","subject":"Hello World","emailType":"html","message":"<h1>Hello World</h1>","options":{"appendAttribution":false,"senderName":"Freyan"}},"type":"n8n-nodes-base.gmail","typeVersion":2.1,"position":[208,0],"id":"82b41fe9-0588-4c8c-aa14-a232fd07ec17","name":"Send a message","webhookId":"54d7bf6c-3c19-49a6-abd4-7233cb96feb4","credentials":{"gmailOAuth2":{"id":"V6F4PoZ5qguyZtAe","name":"Gmail account"}}},{"parameters":{"content":"## 1.\\n**Double click** to edit me. [Guide](https://docs.n8n.io/workflows/sticky-notes/)","height":160,"width":448,"color":1},"type":"n8n-nodes-base.stickyNote","position":[-16,-192],"typeVersion":1,"id":"1fa10d5e-c2c2-41b6-b6c5-9b32e7998bbc","name":"Sticky Note"}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Send a message","type":"main","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"4"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12"},"Send a message",["13","4"],{"When clicking ‘Execute workflow’":"14","Send a message":"15"},{},{},[],{},{},{},"When clicking ‘Execute workflow’",["16"],["17"],{"startTime":1761488411689,"executionIndex":0,"source":"18","hints":"19","executionTime":2,"executionStatus":"20","data":"21"},{"startTime":1761488638628,"executionIndex":1,"source":"22","hints":"23","executionTime":1333,"executionStatus":"20","data":"24"},[],[],"success",{"main":"25"},["26"],[],{"main":"27"},["28"],{"previousNode":"13","previousNodeOutput":0,"previousNodeRun":0},["29"],["30"],["31"],{"json":"32","pairedItem":"33"},{"json":"34","pairedItem":"35"},{},{"item":0},{"id":"36","threadId":"36","labelIds":"37"},{"item":0},"19a20e7961948c9c",["38","39","40"],"UNREAD","SENT","INBOX"]
23	{"id":"CVzrDFsnctC7SzNS","name":"1.N8n Course","active":false,"nodes":[{"parameters":{"content":"## 1. Manual Trigger - Send an Email to Someone\\n\\nWe'll start by learning how manual trigger works. We'll also cover creating a break \\"connection\\" and then using that to send a templated email, basically our \\"Hello World\\".\\n\\n## ","height":160,"width":432,"color":1},"type":"n8n-nodes-base.stickyNote","position":[-64,0],"typeVersion":1,"id":"e1b77184-d79b-42c8-884c-97b4f53cbfce","name":"Sticky Note"},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-16,240],"id":"575b8b40-e7db-48cc-8448-f789e9a0283b","name":"When clicking ‘Execute workflow’"},{"parameters":{"preBuiltAgentsCalloutGmail":"","authentication":"oAuth2","resource":"message","operation":"send","sendTo":"","subject":"","emailType":"html","message":"","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.1,"position":[192,240],"id":"a1597ab0-d023-4bea-9035-8c2bca5e536f","name":"Send a message","webhookId":"82da7441-9530-4658-9604-d0ffd5b797c3"}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Send a message","type":"main","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"resultData":"1"},{"error":"2","runData":"3"},{"level":"4","tags":"5","timestamp":1761486286756,"context":"6","functionality":"7","name":"8","message":"9","stack":"10"},{},"warning",{},{},"regular","WorkflowHasIssuesError","The workflow has issues and cannot be executed for that reason. Please fix them first.","WorkflowHasIssuesError: The workflow has issues and cannot be executed for that reason. Please fix them first.\\n    at WorkflowExecute.checkForWorkflowIssues (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_08b575bec2313d5d8a4cc75358971443/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1382:10)\\n    at WorkflowExecute.processRunExecutionData (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_08b575bec2313d5d8a4cc75358971443/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1461:8)\\n    at WorkflowExecute.run (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_08b575bec2313d5d8a4cc75358971443/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:176:15)\\n    at ManualExecutionService.runManually (/usr/local/lib/node_modules/n8n/src/manual-execution.service.ts:157:27)\\n    at WorkflowRunner.runMainProcess (/usr/local/lib/node_modules/n8n/src/workflow-runner.ts:303:53)\\n    at processTicksAndRejections (node:internal/process/task_queues:105:5)\\n    at WorkflowRunner.run (/usr/local/lib/node_modules/n8n/src/workflow-runner.ts:182:4)\\n    at WorkflowExecutionService.executeManually (/usr/local/lib/node_modules/n8n/src/workflows/workflow-execution.service.ts:222:23)\\n    at WorkflowsController.runManually (/usr/local/lib/node_modules/n8n/src/workflows/workflows.controller.ts:464:10)\\n    at handler (/usr/local/lib/node_modules/n8n/src/controller.registry.ts:79:12)"]
27	{"id":"CVzrDFsnctC7SzNS","name":"1.N8n Course","active":false,"nodes":[{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"2807691f-9cbc-4ae0-b99f-77abaff9ea3e","name":"When clicking ‘Execute workflow’"},{"parameters":{"preBuiltAgentsCalloutGmail":"","authentication":"oAuth2","resource":"message","operation":"send","sendTo":"amberbambico.54@gmail.com","subject":"Hello World","emailType":"html","message":"<h1>Hello World</h1>","options":{"appendAttribution":false,"senderName":"Freyan"}},"type":"n8n-nodes-base.gmail","typeVersion":2.1,"position":[208,0],"id":"82b41fe9-0588-4c8c-aa14-a232fd07ec17","name":"Send a message","webhookId":"54d7bf6c-3c19-49a6-abd4-7233cb96feb4","credentials":{"gmailOAuth2":{"id":"V6F4PoZ5qguyZtAe","name":"Gmail account"}}},{"parameters":{"content":"## 1.  Manual Trigger -> send an email to someone\\n\\nWe'll start by learning how the manual trigger works. We'll also cover creating a brief \\"connection\\" and then using that to send a templated email, basically our \\"Hello World\\".","height":192,"width":448,"color":1},"type":"n8n-nodes-base.stickyNote","position":[-16,-224],"typeVersion":1,"id":"1fa10d5e-c2c2-41b6-b6c5-9b32e7998bbc","name":"Sticky Note"},{"parameters":{"content":"## 2. Form fill -> AI autoresponder\\n\\nNext, we'll use the \\"form fill\\" trigger & learn how to implement AI into an N8N flow. This is a real business use case and I'll show you how simple it is to have AI start responding to things for you.","height":192,"width":448,"color":1},"type":"n8n-nodes-base.stickyNote","position":[-16,208],"typeVersion":1,"id":"e840a2b7-f8c7-4ffa-a7c2-5e6abf1250a0","name":"Sticky Note1"},{"parameters":{"authentication":"none","formTitle":"Onboarding Form","formDescription":"This is an onboarding form for LeftClick. Fill out the fields and our team will get back to you shortly.","formFields":{"values":[{"fieldLabel":"First Name","fieldType":"text","placeholder":"Freyan","requiredField":true},{"fieldLabel":"Last Name","fieldType":"text","placeholder":"Lee","requiredField":true},{"fieldLabel":"Email Address","fieldType":"email","placeholder":"freyan@sample.com","requiredField":true},{"fieldLabel":"Phone Number","fieldType":"text","placeholder":"(+63) 9123 678 910","requiredField":true}]},"responseMode":"onReceived","addFormPage":"","options":{"appendAttribution":false,"buttonLabel":"Let's Get Started"}},"type":"n8n-nodes-base.formTrigger","typeVersion":2.3,"position":[-16,480],"id":"4ab0c9ad-4ad4-4f81-be68-9d43464ed139","name":"On form submission","webhookId":"8a6724d9-7808-43e7-bdee-e3be1f327294"}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Send a message","type":"main","index":0}]]}},"settings":{"executionOrder":"v1"},"staticData":{"node:Schedule Trigger":{"recurrenceRules":[]}},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4"},{"runData":"5","pinData":"6","lastNodeExecuted":"4"},{"contextData":"7","nodeExecutionStack":"8","waitingExecution":"9"},"On form submission",{"On form submission":"10"},{},{},[],{},["11"],{"startTime":1761489491132,"executionIndex":0,"source":"12","hints":"13","executionTime":2,"executionStatus":"14","data":"15"},[],[],"success",{"main":"16"},["17"],["18"],{"json":"19","pairedItem":"20"},{"First Name":"21","Last Name":"22","Email Address":"23","Phone Number":"24","submittedAt":"25","formMode":"26"},{"item":0},"Fernan","Bambico","amberbambico.54@gmail.com","+639550547205","2025-10-26T10:38:08.301-04:00","test"]
28	{"id":"CVzrDFsnctC7SzNS","name":"1.N8n Course","active":false,"nodes":[{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"2807691f-9cbc-4ae0-b99f-77abaff9ea3e","name":"When clicking ‘Execute workflow’"},{"parameters":{"preBuiltAgentsCalloutGmail":"","authentication":"oAuth2","resource":"message","operation":"send","sendTo":"amberbambico.54@gmail.com","subject":"Hello World","emailType":"html","message":"<h1>Hello World</h1>","options":{"appendAttribution":false,"senderName":"Freyan"}},"type":"n8n-nodes-base.gmail","typeVersion":2.1,"position":[208,0],"id":"82b41fe9-0588-4c8c-aa14-a232fd07ec17","name":"Send a message","webhookId":"54d7bf6c-3c19-49a6-abd4-7233cb96feb4","credentials":{"gmailOAuth2":{"id":"V6F4PoZ5qguyZtAe","name":"Gmail account"}}},{"parameters":{"content":"## 1.  Manual Trigger -> send an email to someone\\n\\nWe'll start by learning how the manual trigger works. We'll also cover creating a brief \\"connection\\" and then using that to send a templated email, basically our \\"Hello World\\".","height":192,"width":448,"color":1},"type":"n8n-nodes-base.stickyNote","position":[-16,-224],"typeVersion":1,"id":"1fa10d5e-c2c2-41b6-b6c5-9b32e7998bbc","name":"Sticky Note"},{"parameters":{"content":"## 2. Form fill -> AI autoresponder\\n\\nNext, we'll use the \\"form fill\\" trigger & learn how to implement AI into an N8N flow. This is a real business use case and I'll show you how simple it is to have AI start responding to things for you.","height":192,"width":448,"color":1},"type":"n8n-nodes-base.stickyNote","position":[-16,208],"typeVersion":1,"id":"e840a2b7-f8c7-4ffa-a7c2-5e6abf1250a0","name":"Sticky Note1"},{"parameters":{"authentication":"none","formTitle":"Onboarding Form","formDescription":"This is an onboarding form for LeftClick. Fill out the fields and our team will get back to you shortly.","formFields":{"values":[{"fieldLabel":"First Name","fieldType":"text","placeholder":"Freyan","requiredField":true},{"fieldLabel":"Last Name","fieldType":"text","placeholder":"Lee","requiredField":true},{"fieldLabel":"Email Address","fieldType":"email","placeholder":"freyan@sample.com","requiredField":true},{"fieldLabel":"Phone Number","fieldType":"text","placeholder":"(+63) 9123 678 910","requiredField":true}]},"responseMode":"onReceived","addFormPage":"","options":{"appendAttribution":false,"buttonLabel":"Let's Get Started"}},"type":"n8n-nodes-base.formTrigger","typeVersion":2.3,"position":[-16,480],"id":"4ab0c9ad-4ad4-4f81-be68-9d43464ed139","name":"On form submission","webhookId":"8a6724d9-7808-43e7-bdee-e3be1f327294"},{"parameters":{"resource":"text","operation":"message","modelId":{"__rl":true,"value":"gpt-4o","mode":"list","cachedResultName":"GPT-4O"},"messages":{"values":[{"content":"You are a helpful, intelligent email writing assistant.","role":"system"},{"content":"=Your task is to customize an email using the following data.\\n\\n\\nFirst Name: {{ $json['First Name'] }}\\nLast Name:{{ $json['Last Name'] }}\\nEmail:{{ $json['Email Address'] }}\\nPhone Number:{{ $json['Phone Number'] }}\\n\\n--\\n\\nEmail Template:\\n\\nHey {First Name}, \\n\\nHow are you? Thanks for submitting your onboarding form a moment ago. i see here your number is {Phone Number}, and your email is {Email}.\\n\\nCould you let me know if I'm missing anything?\\n\\nthanks,\\nFreyan\\n\\n\\n","role":"user"}]},"simplify":true,"jsonOutput":false,"options":{}},"type":"@n8n/n8n-nodes-langchain.openAi","typeVersion":1.8,"position":[192,480],"id":"6f1e063c-4d6a-42ce-9b19-94c6b245ffdd","name":"Message a model","credentials":{"openAiApi":{"id":"ldgD9ijpvN4RpuOR","name":"Youtube test"}}}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Send a message","type":"main","index":0}]]},"On form submission":{"main":[[{"node":"Message a model","type":"main","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"4","error":"8"},{"contextData":"9","nodeExecutionStack":"10","metadata":"11","waitingExecution":"12","waitingExecutionSource":"13"},"Message a model",["14","4"],{"On form submission":"15","Message a model":"16"},{},{"level":"17","tags":"18","description":"19","timestamp":1761490309011,"context":"20","functionality":"21","name":"22","node":"23","messages":"24","httpCode":"25","message":"26","stack":"27"},{},["28"],{},{},{},"On form submission",["29"],["30"],"warning",{},"You exceeded your current quota, please check your plan and billing details. For more information on this error, read the docs: https://platform.openai.com/docs/guides/error-codes/api-errors.",{"itemIndex":0},"regular","NodeApiError",{"parameters":"31","type":"32","typeVersion":1.8,"position":"33","id":"34","name":"4","credentials":"35"},["36"],"429","The service is receiving too many requests from you","NodeApiError: The service is receiving too many requests from you\\n    at ExecuteContext.requestWithAuthentication (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_08b575bec2313d5d8a4cc75358971443/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/request-helper-functions.ts:1472:10)\\n    at processTicksAndRejections (node:internal/process/task_queues:105:5)\\n    at ExecuteContext.requestWithAuthentication (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_08b575bec2313d5d8a4cc75358971443/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/request-helper-functions.ts:1758:11)\\n    at ExecuteContext.apiRequest (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/@n8n+n8n-nodes-langchain@file+packages+@n8n+nodes-langchain_fc553bfe732254ec5207074cf9e2ceb7/node_modules/@n8n/n8n-nodes-langchain/nodes/vendors/OpenAi/transport/index.ts:56:9)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/@n8n+n8n-nodes-langchain@file+packages+@n8n+nodes-langchain_fc553bfe732254ec5207074cf9e2ceb7/node_modules/@n8n/n8n-nodes-langchain/nodes/vendors/OpenAi/actions/text/message.operation.ts:290:18)\\n    at ExecuteContext.router (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/@n8n+n8n-nodes-langchain@file+packages+@n8n+nodes-langchain_fc553bfe732254ec5207074cf9e2ceb7/node_modules/@n8n/n8n-nodes-langchain/nodes/vendors/OpenAi/actions/router.ts:54:25)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/@n8n+n8n-nodes-langchain@file+packages+@n8n+nodes-langchain_fc553bfe732254ec5207074cf9e2ceb7/node_modules/@n8n/n8n-nodes-langchain/nodes/vendors/OpenAi/OpenAi.node.ts:16:10)\\n    at WorkflowExecute.executeNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_08b575bec2313d5d8a4cc75358971443/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1093:8)\\n    at WorkflowExecute.runNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_08b575bec2313d5d8a4cc75358971443/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1274:11)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_08b575bec2313d5d8a4cc75358971443/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1676:27",{"node":"37","data":"38","source":"39"},{"startTime":1761489491132,"executionIndex":0,"source":"40","hints":"41","executionTime":2,"executionStatus":"42","data":"43"},{"startTime":1761490306338,"executionIndex":1,"source":"44","hints":"45","executionTime":2775,"executionStatus":"46","error":"47"},{"resource":"48","operation":"49","modelId":"50","messages":"51","simplify":true,"jsonOutput":false,"options":"52"},"@n8n/n8n-nodes-langchain.openAi",[192,480],"6f1e063c-4d6a-42ce-9b19-94c6b245ffdd",{"openAiApi":"53"},"429 - {\\"error\\":{\\"message\\":\\"You exceeded your current quota, please check your plan and billing details. For more information on this error, read the docs: https://platform.openai.com/docs/guides/error-codes/api-errors.\\",\\"type\\":\\"insufficient_quota\\",\\"param\\":null,\\"code\\":\\"insufficient_quota\\"}}",{"parameters":"54","type":"32","typeVersion":1.8,"position":"55","id":"34","name":"4","credentials":"56"},{"main":"57"},{"main":"44"},[],[],"success",{"main":"58"},["59"],[],"error",{"level":"17","tags":"18","description":"19","timestamp":1761490309011,"context":"20","functionality":"21","name":"22","node":"23","messages":"24","httpCode":"25","message":"26","stack":"27"},"text","message",{"__rl":true,"value":"60","mode":"61","cachedResultName":"62"},{"values":"63"},{},{"id":"64","name":"65"},{"resource":"48","operation":"49","modelId":"66","messages":"67","simplify":true,"jsonOutput":false,"options":"68"},[192,480],{"openAiApi":"69"},["70"],["71"],{"previousNode":"14","previousNodeOutput":0,"previousNodeRun":0},"gpt-4o","list","GPT-4O",["72","73"],"ldgD9ijpvN4RpuOR","Youtube test",{"__rl":true,"value":"60","mode":"61","cachedResultName":"62"},{"values":"74"},{},{"id":"64","name":"65"},["75"],["76"],{"content":"77","role":"78"},{"content":"79","role":"80"},["81","82"],{"json":"83","pairedItem":"84"},{"json":"83","pairedItem":"85"},"You are a helpful, intelligent email writing assistant.","system","=Your task is to customize an email using the following data.\\n\\n\\nFirst Name: {{ $json['First Name'] }}\\nLast Name:{{ $json['Last Name'] }}\\nEmail:{{ $json['Email Address'] }}\\nPhone Number:{{ $json['Phone Number'] }}\\n\\n--\\n\\nEmail Template:\\n\\nHey {First Name}, \\n\\nHow are you? Thanks for submitting your onboarding form a moment ago. i see here your number is {Phone Number}, and your email is {Email}.\\n\\nCould you let me know if I'm missing anything?\\n\\nthanks,\\nFreyan\\n\\n\\n","user",{"content":"77","role":"78"},{"content":"79","role":"80"},{"First Name":"86","Last Name":"87","Email Address":"88","Phone Number":"89","submittedAt":"90","formMode":"91"},{"item":0},{"item":0},"Fernan","Bambico","amberbambico.54@gmail.com","+639550547205","2025-10-26T10:38:08.301-04:00","test"]
29	{"id":"CVzrDFsnctC7SzNS","name":"1.N8n Course","active":false,"nodes":[{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"2807691f-9cbc-4ae0-b99f-77abaff9ea3e","name":"When clicking ‘Execute workflow’"},{"parameters":{"preBuiltAgentsCalloutGmail":"","authentication":"oAuth2","resource":"message","operation":"send","sendTo":"amberbambico.54@gmail.com","subject":"Hello World","emailType":"html","message":"<h1>Hello World</h1>","options":{"appendAttribution":false,"senderName":"Freyan"}},"type":"n8n-nodes-base.gmail","typeVersion":2.1,"position":[208,0],"id":"82b41fe9-0588-4c8c-aa14-a232fd07ec17","name":"Send a message","webhookId":"54d7bf6c-3c19-49a6-abd4-7233cb96feb4","credentials":{"gmailOAuth2":{"id":"V6F4PoZ5qguyZtAe","name":"Gmail account"}}},{"parameters":{"content":"## 1.  Manual Trigger -> send an email to someone\\n\\nWe'll start by learning how the manual trigger works. We'll also cover creating a brief \\"connection\\" and then using that to send a templated email, basically our \\"Hello World\\".","height":192,"width":448,"color":1},"type":"n8n-nodes-base.stickyNote","position":[-16,-224],"typeVersion":1,"id":"1fa10d5e-c2c2-41b6-b6c5-9b32e7998bbc","name":"Sticky Note"},{"parameters":{"content":"## 2. Form fill -> AI autoresponder\\n\\nNext, we'll use the \\"form fill\\" trigger & learn how to implement AI into an N8N flow. This is a real business use case and I'll show you how simple it is to have AI start responding to things for you.","height":192,"width":448,"color":1},"type":"n8n-nodes-base.stickyNote","position":[-16,208],"typeVersion":1,"id":"e840a2b7-f8c7-4ffa-a7c2-5e6abf1250a0","name":"Sticky Note1"},{"parameters":{"authentication":"none","formTitle":"Onboarding Form","formDescription":"This is an onboarding form for LeftClick. Fill out the fields and our team will get back to you shortly.","formFields":{"values":[{"fieldLabel":"First Name","fieldType":"text","placeholder":"Freyan","requiredField":true},{"fieldLabel":"Last Name","fieldType":"text","placeholder":"Lee","requiredField":true},{"fieldLabel":"Email Address","fieldType":"email","placeholder":"freyan@sample.com","requiredField":true},{"fieldLabel":"Phone Number","fieldType":"text","placeholder":"(+63) 9123 678 910","requiredField":true}]},"responseMode":"onReceived","addFormPage":"","options":{"appendAttribution":false,"buttonLabel":"Let's Get Started"}},"type":"n8n-nodes-base.formTrigger","typeVersion":2.3,"position":[-16,480],"id":"4ab0c9ad-4ad4-4f81-be68-9d43464ed139","name":"On form submission","webhookId":"8a6724d9-7808-43e7-bdee-e3be1f327294"},{"parameters":{"resource":"text","operation":"message","modelId":{"__rl":true,"value":"gpt-4o","mode":"list","cachedResultName":"GPT-4O"},"messages":{"values":[{"content":"You are a helpful, intelligent email writing assistant.","role":"system"},{"content":"=Your task is to customize an email using the following data.\\n\\n\\nFirst Name: {{ $json['First Name'] }}\\nLast Name:{{ $json['Last Name'] }}\\nEmail:{{ $json['Email Address'] }}\\nPhone Number:{{ $json['Phone Number'] }}\\n\\n--\\n\\nEmail Template:\\n\\nHey {First Name}, \\n\\nHow are you? Thanks for submitting your onboarding form a moment ago. i see here your number is {Phone Number}, and your email is {Email}.\\n\\nCould you let me know if I'm missing anything?\\n\\nthanks,\\nFreyan\\n\\n\\n","role":"user"}]},"simplify":true,"jsonOutput":false,"options":{}},"type":"@n8n/n8n-nodes-langchain.openAi","typeVersion":1.8,"position":[192,480],"id":"6f1e063c-4d6a-42ce-9b19-94c6b245ffdd","name":"Message a model","credentials":{"openAiApi":{"id":"ldgD9ijpvN4RpuOR","name":"Youtube test"}}}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Send a message","type":"main","index":0}]]},"On form submission":{"main":[[{"node":"Message a model","type":"main","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"4","error":"8"},{"contextData":"9","nodeExecutionStack":"10","metadata":"11","waitingExecution":"12","waitingExecutionSource":"13"},"Message a model",["14","4"],{"On form submission":"15","Message a model":"16"},{},{"level":"17","tags":"18","description":"19","timestamp":1761490497529,"context":"20","functionality":"21","name":"22","node":"23","messages":"24","httpCode":"25","message":"26","stack":"27"},{},["28"],{},{},{},"On form submission",["29"],["30"],"warning",{},"You exceeded your current quota, please check your plan and billing details. For more information on this error, read the docs: https://platform.openai.com/docs/guides/error-codes/api-errors.",{"itemIndex":0},"regular","NodeApiError",{"parameters":"31","type":"32","typeVersion":1.8,"position":"33","id":"34","name":"4","credentials":"35"},["36"],"429","The service is receiving too many requests from you","NodeApiError: The service is receiving too many requests from you\\n    at ExecuteContext.requestWithAuthentication (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_08b575bec2313d5d8a4cc75358971443/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/request-helper-functions.ts:1472:10)\\n    at processTicksAndRejections (node:internal/process/task_queues:105:5)\\n    at ExecuteContext.requestWithAuthentication (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_08b575bec2313d5d8a4cc75358971443/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/request-helper-functions.ts:1758:11)\\n    at ExecuteContext.apiRequest (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/@n8n+n8n-nodes-langchain@file+packages+@n8n+nodes-langchain_fc553bfe732254ec5207074cf9e2ceb7/node_modules/@n8n/n8n-nodes-langchain/nodes/vendors/OpenAi/transport/index.ts:56:9)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/@n8n+n8n-nodes-langchain@file+packages+@n8n+nodes-langchain_fc553bfe732254ec5207074cf9e2ceb7/node_modules/@n8n/n8n-nodes-langchain/nodes/vendors/OpenAi/actions/text/message.operation.ts:290:18)\\n    at ExecuteContext.router (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/@n8n+n8n-nodes-langchain@file+packages+@n8n+nodes-langchain_fc553bfe732254ec5207074cf9e2ceb7/node_modules/@n8n/n8n-nodes-langchain/nodes/vendors/OpenAi/actions/router.ts:54:25)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/@n8n+n8n-nodes-langchain@file+packages+@n8n+nodes-langchain_fc553bfe732254ec5207074cf9e2ceb7/node_modules/@n8n/n8n-nodes-langchain/nodes/vendors/OpenAi/OpenAi.node.ts:16:10)\\n    at WorkflowExecute.executeNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_08b575bec2313d5d8a4cc75358971443/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1093:8)\\n    at WorkflowExecute.runNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_08b575bec2313d5d8a4cc75358971443/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1274:11)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_08b575bec2313d5d8a4cc75358971443/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1676:27",{"node":"37","data":"38","source":"39"},{"startTime":1761489491132,"executionIndex":0,"source":"40","hints":"41","executionTime":2,"executionStatus":"42","data":"43"},{"startTime":1761490496266,"executionIndex":1,"source":"44","hints":"45","executionTime":1264,"executionStatus":"46","error":"47"},{"resource":"48","operation":"49","modelId":"50","messages":"51","simplify":true,"jsonOutput":false,"options":"52"},"@n8n/n8n-nodes-langchain.openAi",[192,480],"6f1e063c-4d6a-42ce-9b19-94c6b245ffdd",{"openAiApi":"53"},"429 - {\\"error\\":{\\"message\\":\\"You exceeded your current quota, please check your plan and billing details. For more information on this error, read the docs: https://platform.openai.com/docs/guides/error-codes/api-errors.\\",\\"type\\":\\"insufficient_quota\\",\\"param\\":null,\\"code\\":\\"insufficient_quota\\"}}",{"parameters":"54","type":"32","typeVersion":1.8,"position":"55","id":"34","name":"4","credentials":"56"},{"main":"57"},{"main":"44"},[],[],"success",{"main":"58"},["59"],[],"error",{"level":"17","tags":"18","description":"19","timestamp":1761490497529,"context":"20","functionality":"21","name":"22","node":"23","messages":"24","httpCode":"25","message":"26","stack":"27"},"text","message",{"__rl":true,"value":"60","mode":"61","cachedResultName":"62"},{"values":"63"},{},{"id":"64","name":"65"},{"resource":"48","operation":"49","modelId":"66","messages":"67","simplify":true,"jsonOutput":false,"options":"68"},[192,480],{"openAiApi":"69"},["70"],["71"],{"previousNode":"14","previousNodeOutput":0,"previousNodeRun":0},"gpt-4o","list","GPT-4O",["72","73"],"ldgD9ijpvN4RpuOR","Youtube test",{"__rl":true,"value":"60","mode":"61","cachedResultName":"62"},{"values":"74"},{},{"id":"64","name":"65"},["75"],["76"],{"content":"77","role":"78"},{"content":"79","role":"80"},["81","82"],{"json":"83","pairedItem":"84"},{"json":"83","pairedItem":"85"},"You are a helpful, intelligent email writing assistant.","system","=Your task is to customize an email using the following data.\\n\\n\\nFirst Name: {{ $json['First Name'] }}\\nLast Name:{{ $json['Last Name'] }}\\nEmail:{{ $json['Email Address'] }}\\nPhone Number:{{ $json['Phone Number'] }}\\n\\n--\\n\\nEmail Template:\\n\\nHey {First Name}, \\n\\nHow are you? Thanks for submitting your onboarding form a moment ago. i see here your number is {Phone Number}, and your email is {Email}.\\n\\nCould you let me know if I'm missing anything?\\n\\nthanks,\\nFreyan\\n\\n\\n","user",{"content":"77","role":"78"},{"content":"79","role":"80"},{"First Name":"86","Last Name":"87","Email Address":"88","Phone Number":"89","submittedAt":"90","formMode":"91"},{"item":0},{"item":0},"Fernan","Bambico","amberbambico.54@gmail.com","+639550547205","2025-10-26T10:38:08.301-04:00","test"]
30	{"id":"CVzrDFsnctC7SzNS","name":"1.N8n Course","active":false,"nodes":[{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"2807691f-9cbc-4ae0-b99f-77abaff9ea3e","name":"When clicking ‘Execute workflow’"},{"parameters":{"preBuiltAgentsCalloutGmail":"","authentication":"oAuth2","resource":"message","operation":"send","sendTo":"amberbambico.54@gmail.com","subject":"Hello World","emailType":"html","message":"<h1>Hello World</h1>","options":{"appendAttribution":false,"senderName":"Freyan"}},"type":"n8n-nodes-base.gmail","typeVersion":2.1,"position":[208,0],"id":"82b41fe9-0588-4c8c-aa14-a232fd07ec17","name":"Send a message","webhookId":"54d7bf6c-3c19-49a6-abd4-7233cb96feb4","credentials":{"gmailOAuth2":{"id":"V6F4PoZ5qguyZtAe","name":"Gmail account"}}},{"parameters":{"content":"## 1.  Manual Trigger -> send an email to someone\\n\\nWe'll start by learning how the manual trigger works. We'll also cover creating a brief \\"connection\\" and then using that to send a templated email, basically our \\"Hello World\\".","height":192,"width":448,"color":1},"type":"n8n-nodes-base.stickyNote","position":[-16,-224],"typeVersion":1,"id":"1fa10d5e-c2c2-41b6-b6c5-9b32e7998bbc","name":"Sticky Note"},{"parameters":{"content":"## 2. Form fill -> AI autoresponder\\n\\nNext, we'll use the \\"form fill\\" trigger & learn how to implement AI into an N8N flow. This is a real business use case and I'll show you how simple it is to have AI start responding to things for you.","height":192,"width":448,"color":1},"type":"n8n-nodes-base.stickyNote","position":[-16,208],"typeVersion":1,"id":"e840a2b7-f8c7-4ffa-a7c2-5e6abf1250a0","name":"Sticky Note1"},{"parameters":{"authentication":"none","formTitle":"Onboarding Form","formDescription":"This is an onboarding form for LeftClick. Fill out the fields and our team will get back to you shortly.","formFields":{"values":[{"fieldLabel":"First Name","fieldType":"text","placeholder":"Freyan","requiredField":true},{"fieldLabel":"Last Name","fieldType":"text","placeholder":"Lee","requiredField":true},{"fieldLabel":"Email Address","fieldType":"email","placeholder":"freyan@sample.com","requiredField":true},{"fieldLabel":"Phone Number","fieldType":"text","placeholder":"(+63) 9123 678 910","requiredField":true}]},"responseMode":"onReceived","addFormPage":"","options":{"appendAttribution":false,"buttonLabel":"Let's Get Started"}},"type":"n8n-nodes-base.formTrigger","typeVersion":2.3,"position":[-16,480],"id":"4ab0c9ad-4ad4-4f81-be68-9d43464ed139","name":"On form submission","webhookId":"8a6724d9-7808-43e7-bdee-e3be1f327294"},{"parameters":{"resource":"text","operation":"message","modelId":{"__rl":true,"value":"gpt-4o","mode":"list","cachedResultName":"GPT-4O"},"messages":{"values":[{"content":"You are a helpful, intelligent email writing assistant.","role":"system"},{"content":"=Your task is to customize an email using the following data.\\n\\n\\nFirst Name: {{ $json['First Name'] }}\\nLast Name:{{ $json['Last Name'] }}\\nEmail:{{ $json['Email Address'] }}\\nPhone Number:{{ $json['Phone Number'] }}\\n\\n--\\n\\nEmail Template:\\n\\nHey {First Name}, \\n\\nHow are you? Thanks for submitting your onboarding form a moment ago. i see here your number is {Phone Number}, and your email is {Email}.\\n\\nCould you let me know if I'm missing anything?\\n\\nthanks,\\nFreyan\\n\\n\\n","role":"user"}]},"simplify":true,"jsonOutput":false,"options":{}},"type":"@n8n/n8n-nodes-langchain.openAi","typeVersion":1.8,"position":[400,480],"id":"6f1e063c-4d6a-42ce-9b19-94c6b245ffdd","name":"Message a model","credentials":{"openAiApi":{"id":"ldgD9ijpvN4RpuOR","name":"Youtube test"}}},{"parameters":{"resource":"text","operation":"message","modelId":{"__rl":true,"value":"models/gemini-2.5-flash","mode":"list","cachedResultName":"models/gemini-2.5-flash"},"messages":{"values":[{"content":"You are a helpful, Intelligent email writing assistant.","role":"model"},{"content":"=Your task is to customize an email using the following data:\\n\\nFirst Name:{{ $json['First Name'] }}\\nLast Name:{{ $json['Last Name'] }}\\nEmail Address:{{ $json['Email Address'] }}\\nPhone Number: {{ $json['Phone Number'] }}\\n\\n--\\n\\nEmail Template:\\n\\nHey {First Name},\\n\\nHow are you? Thanks for submitting you onboarding form a moment ago. I see here you number is {Phone Number}, and your email is {Email}.\\n\\nCould you let me know if I'm missing anything?\\n\\nThanks,\\nFreyan","role":"user"}]},"simplify":true,"jsonOutput":false,"options":{}},"type":"@n8n/n8n-nodes-langchain.googleGemini","typeVersion":1,"position":[192,480],"id":"7e87e6d3-48d6-4b3e-b215-6fa29a743384","name":"Message a model1","credentials":{"googlePalmApi":{"id":"XGvBpUk4jkPH5F8n","name":"Google Gemini(PaLM) Api account"}}}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Send a message","type":"main","index":0}]]},"On form submission":{"main":[[{"node":"Message a model1","type":"main","index":0}]]},"Message a model1":{"main":[[{"node":"Message a model","type":"main","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"4"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12"},"Message a model1",["13","4"],{"On form submission":"14","Message a model1":"15"},{},{},[],{},{},{},"On form submission",["16"],["17"],{"startTime":1761489491132,"executionIndex":0,"source":"18","hints":"19","executionTime":2,"executionStatus":"20","data":"21"},{"startTime":1761491282824,"executionIndex":1,"source":"22","hints":"23","executionTime":2314,"executionStatus":"20","data":"24"},[],[],"success",{"main":"25"},["26"],[],{"main":"27"},["28"],{"previousNode":"13","previousNodeOutput":0,"previousNodeRun":0},["29"],["30"],["31"],{"json":"32","pairedItem":"33"},{"json":"34","pairedItem":"35"},{"First Name":"36","Last Name":"37","Email Address":"38","Phone Number":"39","submittedAt":"40","formMode":"41"},{"item":0},{"content":"42","finishReason":"43","index":0},{"item":0},"Fernan","Bambico","amberbambico.54@gmail.com","+639550547205","2025-10-26T10:38:08.301-04:00","test",{"parts":"44","role":"45"},"STOP",["46"],"model",{"text":"47"},"Hey Fernan,\\n\\nHow are you? Thanks for submitting your onboarding form a moment ago. I see here your number is +639550547205, and your email is amberbambico.54@gmail.com.\\n\\nCould you let me know if I'm missing anything?\\n\\nThanks,\\nFreyan"]
31	{"id":"CVzrDFsnctC7SzNS","name":"1.N8n Course","active":false,"nodes":[{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"2807691f-9cbc-4ae0-b99f-77abaff9ea3e","name":"When clicking ‘Execute workflow’"},{"parameters":{"preBuiltAgentsCalloutGmail":"","authentication":"oAuth2","resource":"message","operation":"send","sendTo":"amberbambico.54@gmail.com","subject":"Hello World","emailType":"html","message":"<h1>Hello World</h1>","options":{"appendAttribution":false,"senderName":"Freyan"}},"type":"n8n-nodes-base.gmail","typeVersion":2.1,"position":[208,0],"id":"82b41fe9-0588-4c8c-aa14-a232fd07ec17","name":"Send a message","webhookId":"54d7bf6c-3c19-49a6-abd4-7233cb96feb4","credentials":{"gmailOAuth2":{"id":"V6F4PoZ5qguyZtAe","name":"Gmail account"}}},{"parameters":{"content":"## 1.  Manual Trigger -> send an email to someone\\n\\nWe'll start by learning how the manual trigger works. We'll also cover creating a brief \\"connection\\" and then using that to send a templated email, basically our \\"Hello World\\".","height":192,"width":448,"color":1},"type":"n8n-nodes-base.stickyNote","position":[-16,-224],"typeVersion":1,"id":"1fa10d5e-c2c2-41b6-b6c5-9b32e7998bbc","name":"Sticky Note"},{"parameters":{"content":"## 2. Form fill -> AI autoresponder\\n\\nNext, we'll use the \\"form fill\\" trigger & learn how to implement AI into an N8N flow. This is a real business use case and I'll show you how simple it is to have AI start responding to things for you.","height":192,"width":448,"color":1},"type":"n8n-nodes-base.stickyNote","position":[-16,208],"typeVersion":1,"id":"e840a2b7-f8c7-4ffa-a7c2-5e6abf1250a0","name":"Sticky Note1"},{"parameters":{"authentication":"none","formTitle":"Onboarding Form","formDescription":"This is an onboarding form for LeftClick. Fill out the fields and our team will get back to you shortly.","formFields":{"values":[{"fieldLabel":"First Name","fieldType":"text","placeholder":"Freyan","requiredField":true},{"fieldLabel":"Last Name","fieldType":"text","placeholder":"Lee","requiredField":true},{"fieldLabel":"Email Address","fieldType":"email","placeholder":"freyan@sample.com","requiredField":true},{"fieldLabel":"Phone Number","fieldType":"text","placeholder":"(+63) 9123 678 910","requiredField":true}]},"responseMode":"onReceived","addFormPage":"","options":{"appendAttribution":false,"buttonLabel":"Let's Get Started"}},"type":"n8n-nodes-base.formTrigger","typeVersion":2.3,"position":[-16,480],"id":"4ab0c9ad-4ad4-4f81-be68-9d43464ed139","name":"On form submission","webhookId":"8a6724d9-7808-43e7-bdee-e3be1f327294"},{"parameters":{"resource":"text","operation":"message","modelId":{"__rl":true,"value":"models/gemini-2.5-flash","mode":"list","cachedResultName":"models/gemini-2.5-flash"},"messages":{"values":[{"content":"You are a helpful, Intelligent email writing assistant.","role":"model"},{"content":"=Your task is to customize an email using the following data:\\n\\nFirst Name:{{ $json['First Name'] }}\\nLast Name:{{ $json['Last Name'] }}\\nEmail Address:{{ $json['Email Address'] }}\\nPhone Number: {{ $json['Phone Number'] }}\\n\\n--\\n\\nEmail Template:\\n\\nHey {First Name},\\n\\nHow are you? Thanks for submitting you onboarding form a moment ago. I see here you number is {Phone Number}, and your email is {Email}.\\n\\nCould you let me know if I'm missing anything?\\n\\nThanks,\\nFreyan","role":"user"}]},"simplify":true,"jsonOutput":false,"options":{}},"type":"@n8n/n8n-nodes-langchain.googleGemini","typeVersion":1,"position":[192,480],"id":"7e87e6d3-48d6-4b3e-b215-6fa29a743384","name":"Message a model1","credentials":{"googlePalmApi":{"id":"XGvBpUk4jkPH5F8n","name":"Google Gemini(PaLM) Api account"}}},{"parameters":{"preBuiltAgentsCalloutGmail":"","authentication":"oAuth2","resource":"message","operation":"send","sendTo":"amberbambico.54@gmail.com","subject":"=Re: your onboarding form","emailType":"html","message":"={{ $json.content.parts[0].text }}","options":{"appendAttribution":false,"senderName":"Freyan"}},"type":"n8n-nodes-base.gmail","typeVersion":2.1,"position":[512,480],"id":"4fc26c24-1c5d-4d06-af92-4d3a88c908b7","name":"Send a message1","webhookId":"54d7bf6c-3c19-49a6-abd4-7233cb96feb4","credentials":{"gmailOAuth2":{"id":"V6F4PoZ5qguyZtAe","name":"Gmail account"}}}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Send a message","type":"main","index":0}]]},"On form submission":{"main":[[{"node":"Message a model1","type":"main","index":0}]]},"Message a model1":{"main":[[{"node":"Send a message1","type":"main","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{"Message a model1":[{"json":{"content":{"parts":[{"text":"Hey Fernan,\\n\\nHow are you? Thanks for submitting your onboarding form a moment ago. I see here your number is +639550547205, and your email is amberbambico.54@gmail.com.\\n\\nCould you let me know if I'm missing anything?\\n\\nThanks,\\nFreyan"}],"role":"model"},"finishReason":"STOP","index":0}}]}}	[{"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"4"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12"},"Send a message1",["13","14","4"],{"On form submission":"15","Message a model1":"16","Send a message1":"17"},{"Message a model1":"18"},{},[],{},{},{},"On form submission","Message a model1",["19"],["20"],["21"],["22"],{"startTime":1761489491132,"executionIndex":0,"source":"23","hints":"24","executionTime":2,"executionStatus":"25","data":"26"},{"startTime":1761491282824,"executionIndex":1,"source":"27","hints":"28","executionTime":2314,"executionStatus":"25","data":"29"},{"startTime":1761491470166,"executionIndex":2,"source":"30","hints":"31","executionTime":2228,"executionStatus":"25","data":"32"},{"json":"33"},[],[],"success",{"main":"34"},["35"],[],{"main":"36"},["37"],[],{"main":"38"},{"content":"39","finishReason":"40","index":0},["41"],{"previousNode":"13","previousNodeOutput":0,"previousNodeRun":0},["42"],{"previousNode":"14","previousNodeOutput":0,"previousNodeRun":0},["43"],{"parts":"44","role":"45"},"STOP",["46"],["47"],["48"],["49"],"model",{"json":"50","pairedItem":"51"},{"json":"52","pairedItem":"53"},{"json":"54","pairedItem":"55"},{"text":"56"},{"First Name":"57","Last Name":"58","Email Address":"59","Phone Number":"60","submittedAt":"61","formMode":"62"},{"item":0},{"content":"63","finishReason":"40","index":0},{"item":0},{"id":"64","threadId":"64","labelIds":"65"},{"item":0},"Hey Fernan,\\n\\nHow are you? Thanks for submitting your onboarding form a moment ago. I see here your number is +639550547205, and your email is amberbambico.54@gmail.com.\\n\\nCould you let me know if I'm missing anything?\\n\\nThanks,\\nFreyan","Fernan","Bambico","amberbambico.54@gmail.com","+639550547205","2025-10-26T10:38:08.301-04:00","test",{"parts":"66","role":"45"},"19a2112ceeba73f8",["67","68","69"],["70"],"UNREAD","SENT","INBOX",{"text":"56"}]
32	{"id":"CVzrDFsnctC7SzNS","name":"1.N8n Course","active":false,"nodes":[{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"2807691f-9cbc-4ae0-b99f-77abaff9ea3e","name":"When clicking ‘Execute workflow’"},{"parameters":{"preBuiltAgentsCalloutGmail":"","authentication":"oAuth2","resource":"message","operation":"send","sendTo":"amberbambico.54@gmail.com","subject":"hello","emailType":"html","message":"hello","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.1,"position":[208,0],"id":"82b41fe9-0588-4c8c-aa14-a232fd07ec17","name":"Send a message","webhookId":"54d7bf6c-3c19-49a6-abd4-7233cb96feb4","credentials":{"gmailOAuth2":{"id":"V6F4PoZ5qguyZtAe","name":"Gmail account"}}},{"parameters":{"content":"## 1.\\n**Double click** to edit me. [Guide](https://docs.n8n.io/workflows/sticky-notes/)","height":160,"width":448,"color":1},"type":"n8n-nodes-base.stickyNote","position":[-16,-192],"typeVersion":1,"id":"1fa10d5e-c2c2-41b6-b6c5-9b32e7998bbc","name":"Sticky Note"}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Send a message","type":"main","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"4"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12"},"Send a message",["13","4"],{"When clicking ‘Execute workflow’":"14","Send a message":"15"},{},{},[],{},{},{},"When clicking ‘Execute workflow’",["16"],["17"],{"startTime":1761917257946,"executionIndex":0,"source":"18","hints":"19","executionTime":2,"executionStatus":"20","data":"21"},{"startTime":1761917257949,"executionIndex":1,"source":"22","hints":"23","executionTime":1993,"executionStatus":"20","data":"24"},[],[],"success",{"main":"25"},["26"],[],{"main":"27"},["28"],{"previousNode":"13"},["29"],["30"],["31"],{"json":"32","pairedItem":"33"},{"json":"34","pairedItem":"35"},{},{"item":0},{"id":"36","threadId":"36","labelIds":"37"},{"item":0},"19a3a73ce79a79ad",["38","39","40"],"UNREAD","SENT","INBOX"]
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
Youtube	2025-10-26 13:26:01.452+00	2025-10-26 13:26:01.452+00	sWgX1FPDnaLvmKfv
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
license.cert	eyJsaWNlbnNlS2V5IjoiLS0tLS1CRUdJTiBMSUNFTlNFIEtFWS0tLS0tXG5YVXVuc2Fubm1zR3k4SWpiOHJOWHFGUFBhcFRhdkRDc3FGSUVEbnNzeFNIeVl2VFZsOXJvQ0VWand5MFp0ZzlLXG4rYmZlYzJFcFp4bGRDbEZDVlRKUXlhZE9PM1VzWGM0MTlIMmIrdnRqVVA2ODVacmIvQWZmek9DckZZK0gyT1RNXG5pNlg2STRDWTlEMktYWDg4L0VYNzdMUGJVZXNLdGNhSG5Cay9tOUFPQ2RON0hkL1hyc1VuZ001N0RnQm1MU0VjXG50VmJQaGhxbld0cFpDakxTSVBRdDNtbElreUhqZ2RGUmFyWHhPZ0VNcGNCN3pVUUowN0h1N0lvKzVNWFBiT3JVXG5iNGpJRmpIMktYU01iYXJjZnJ5WHNzeHZmNVhjbmM0TFN5V25ueDFlYmtsekJBMHZySnRwQW9JenRiQ1NaczZ6XG52MVcvS1E2TWMrbXpEVmkxOXJVRjR3PT18fFUyRnNkR1ZrWDE4b3VIQSthT2dqY0RoTU50d3NnY1lmOE50UEtHXG5oQ2lMZzl3L3c5Y29ncHdjYXpIY1NKM1lzYmdidWxycWdUN2RLNHJXc0JnZmM4VnB0R2dJK0FoWk42b3VaQUx6XG5zRXZLRG5nN1I5T00vZW8wcTRYTjlYUzJHZ2ttRHZsNG5uWnVxM1VtNnp6blNiTmpRVnQwRk51dWxNN25GbnJEXG5JdzlQU214UWZadk5mK3RYTER1NmsxVlp6Tk1aRE9Xa2pkb1pJeUEwcFdGME5TSUpwVmI4TXgxRE1ITm9WWEQvXG5xOE10MG5uT0ZjZGQwOG1hYnhJY2tLeVNWdzk0VmRKRzNCbDVBR2did1U5NlJtOEdzMXhNRTFVUFo1dFNxZ3BwXG5zSk53Rk10RDFqTEN5aThKSitMcEdERUZ0VXpYYmpYYWtBM0Z0VXhjM1hVYU05MEM5cHRGblYwZFNBa1MvZVIzXG5ic003VTlKNGQwYlZVSVBBeDZjUDNsVDdoK3dFU0U4ZG8vUDI2eVBabFhWZzZjYURuUzZIeUo5c3lxdStyemF6XG5QTk4zTThDdlJZNE00Mlc0VFFIRW1HOE5heVB5RzVSNDFzNlUxOXFHeFJzTUJjSHpPc0JyQjRtcWNSZEtnd2F4XG5BMkR1MmNvNE9hUHpxMFNPOWhLT1REd3Fwc0JtYVV5UFZISjFOa3JZWFFySVg0eE44ZWlaS3l6RmRaOTZsWnhHXG4xdzR0NDQ2cFhEcGJLZHdQRGhzcEpKVytHeXU3VlV0VTRQWVFlanlQZHlwS3Rlc0IrOXdYbUZIaHdEZFczdHNsXG5Hb0pVaGd4SGU1TEF0ZVpIK1FuRnhDSTlOYWpHazhnNU9MOXNtZmp1WW9WV1U4c3ZrM3Ewak5OUEs0ZDdHcE5CXG4wR1JZekZtWkUyM2hjUDFLUWxrbDZLS00yZU5waDNabnVPQ2U4TXlSNUlENFFVc0pJRzVVci9OeWxIUVlTalE3XG5OOEtqTTgvRXNiLzdSYkl3YWV4ZVFvbWxDOUowcldoK0dPZ1JUQ01xYXN2R040ZWlqSmhJWmRmb0k5cVUxeTFDXG5TWm0zMTI5Qzc4dUxkbk5Ja0VHUG9WUndGdm1jUlZEalNZZVNqMnpYaUJmQ1A3bWt0T1M0b1VRL2V6ZlJpejM2XG5vWTZrRUxlSUpGbnJXY1BnS3JqdUg2M0tILy9aRks3WnBkKzFyamE5Z1lvSmphWi9reGpsekJ5N2VMNnVzaDNNXG4rUXJQdlJlUVpMT3JQdWxYUnZmUU1DMHVNb1UwdVNmMXBHdlBxZWh3YU9hY2xaalhDbmRKalhzeEtRRTluQm5YXG5VQWRYNHNRQXlzUTZGN3dGVWU1dXVnVWpybWkrUTRoTndhaVF3b3hXOEc3ZHZjYlkwSkNKemNFWHIxVU5NekpPXG4zUzlKNjBRZHBYUCswN2JpK1JaRkxkSUhjbElaaUNzTnBaR1ZnM2REMGdmeUtUMElMRE0zQVZYM04rYTMraUdrXG5XUEVPaC9ia0tvSEdlVUFxcVlYQ1JjajcrQkd5ajhTc1hzVEdXZTZpZ1p6bVI0ZWc2U0tTTCtERU9GVjRBMHRYXG5lTWFTL1NFMzdFL3hja2xNdkc0cE9Vd3o2UThSMXBIdS9ueDRWVldTNFlOR2d6Wm4yNm1sQ0hjOW4rMTd6VlNvXG4yTk1LZmNHR09TYzNKUElIa0RNTXdBbDN6TG1jTjJtc3B3dml2QWkxT0dxTzNoWk9WaWNCL29BY3VyNjhJRFpXXG5qSFJTc0pSd1A0K2dyb01WRllwcGtBTjVzSFI3RUVxajVSUlYyOEpkY1ZDVG9RVnFJMko0cnorb0hvVmFROU84XG40YUJqM1JQOGFzeGw1UVc3UmJjMUxBWnZlL1k1Si9uU1NaWE0wNUZzWXJYRzdKNk5URWNZdE9mTmZGV1JhU2JrXG5xblZIRWIzSjlRcnhSdzhoSEE3Y1hydHlLTzVhUGZvV2lwY2dwN2JTWHdMc2tmWmJlak5wek0yOWk2R3YzQXpwXG4xUVVwYjdNTGViZmlRNHVnajUwRFMzVSs2YVZ5RTRlWm9MRnBVcmJHMkJWY1RCT2VWakVUUDR1dXcvWjQ3cmJMXG55b1pmelVxZjN3RFdVaUdHOTVJMHYvdjBWNjBYUTlXQlliTzdqSVpUL04wd3BNOG9aVHJCYnhmcFAzYUE4T1JKXG5iSW8vY0FlVFdZdnVUeEU1aHNMc015SG0zT2NaaUxVZ0ZqclM3Q0xNT1hwaDRYWXpaVVB1VUdWdDkvWTlqR2Q0XG4ycjNNTHVoanZXNjVrVHJCb3R6dExOYW9FVGp1bjhzak4xWUNHQkt3eEJvUjVmcittRmNGa1JScTRiUXNBZEF0XG56Rko0Rm91TENRNUc1eG8weEZHSnVlYk40TnVWdld2NkN4bFhjMmRIM3d6RFFjSzNrbmVIVHVyTkl5Tzl1V0thXG52cUpRK0JKOHVtNVpTQ2tPeGVYTG1wZ2RUT0xTSmk5TWZUVXZsdHJidE5SSGx5MStWSTkxNVRSdzdjUWpkMjl5XG5lbHU4ejZhWGFNeFl2TDN1Yno2YStDUitiT05qN0h2citQZHM5emptQXdsTFlvcElPbytrcGladTlob1NVN3RsXG52eFV6bnNtbnhLRDk2TXh2SCs2RVY1Wjl2dm1jNTZhSUtFMDk4cGN2cmRoYzFtclptUHVXeTdGTS9tUnUrVmsxXG5FNVFTZnp2QkdtWUI5TDE4eitMU1pkYVY2OERvMW5oV1FxeXU4OUNZY1YyVit4d1VwOXJGM0VwdnlNTEdlVkQvXG5yQXVWNDR3SkE0TGdJTUJacnE2V0JaU2FJVGVxN1l3UmVoWDgvSVE2SkZzR1c0c2ZYWXBadWhtTFlLbUpRNjZsXG5xVVJhYlowU0dLVXVKQmJzQURzejE0TnpIMTBjNEJiK3Z0UWRNQVo5ZkZ3UjZiK1p3Z1lNekNvM1RFYW1LWGdJXG53Nm0wdTVITEZhRU14aFlpT2thQy9uTjM0UkhGVjdiWkwrWEpMbnVIODVTNjdiWHZYb2NWNGN6Wi9mcklXYlBsXG52alFOdnlmb0IwK3k4N0ZpWHBJYUFNNGZCK2lrb1FhcHlOOEs2M2tCVnNPc0QzcEE9PXx8clM4WnYzb2tSZ0h3XG40TlI0MVpBaUF0azVpV0JZWXpkL3FJUHljWHJHTFUveEZ0ZmpCeHdBRzdQTER3U0FZd2UrMFU0akJpYVV3bks0XG5SbmNPNDUzemo2Yk05ZzFZSGUrZkdJR3piV1gyRVlXVVBaWlE5THdRWUtCaWdLdVpWL0ZXaC8va0JScEtud3dFXG5YbnJyb1dvcHJYemM5L3pUZDFXZHRyaG5nUGd6QXBUMXQxR2NDV3RSb2J1d0ZRSnoxWGd5NXVEcUtPK2UyYThVXG5hbDVRY1p1RzVpTlMyOU1pRVZrTWo4bEtaRDJLM21RYzlPN3htOVFpNno3YmJKcytFUWIzRkQrRVM1YkxrQnRwXG5lUW5TMTg4aThkUUk1elZYN3k5OXQrTWtwdnp0K1c4TkUzdHNJbjN6TEc1UmZ3czArNENiQ2YxS3R0ZDh0NkZ5XG5nVkdpRDluN2dnPT1cbi0tLS0tRU5EIExJQ0VOU0UgS0VZLS0tLS0iLCJ4NTA5IjoiLS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tXG5NSUlFRERDQ0FmUUNDUUNxZzJvRFQ4MHh3akFOQmdrcWhraUc5dzBCQVFVRkFEQklNUXN3Q1FZRFZRUUdFd0pFXG5SVEVQTUEwR0ExVUVDQXdHUW1WeWJHbHVNUTh3RFFZRFZRUUhEQVpDWlhKc2FXNHhGekFWQmdOVkJBTU1EbXhwXG5ZMlZ1YzJVdWJqaHVMbWx2TUI0WERUSXlNRFl5TkRBME1UQTBNRm9YRFRJek1EWXlOREEwTVRBME1Gb3dTREVMXG5NQWtHQTFVRUJoTUNSRVV4RHpBTkJnTlZCQWdNQmtKbGNteHBiakVQTUEwR0ExVUVCd3dHUW1WeWJHbHVNUmN3XG5GUVlEVlFRRERBNXNhV05sYm5ObExtNDRiaTVwYnpDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDXG5BUW9DZ2dFQkFNQk0wNVhCNDRnNXhmbUNMd2RwVVR3QVQ4K0NCa3lMS0ZzZXprRDVLLzZXaGFYL1hyc2QvUWQwXG4yMEo3d2w1V2RIVTRjVkJtRlJqVndWemtsQ0syeVlKaThtang4c1hzR3E5UTFsYlVlTUtmVjlkc2dmdWhubEFTXG50blFaZ2x1Z09uRjJGZ1JoWGIvakswdHhUb2FvK2JORTZyNGdJRXpwa3RITEJUWXZ2aXVKbXJlZjdXYlBSdDRJXG5uZDlEN2xoeWJlYnloVjdrdXpqUUEvcFBLSFRGczhNVEhaOGhZVXhSeXJwbTMrTVl6UUQrYmpBMlUxRkljdGFVXG53UVhZV2FON3QydVR3Q3Q5ekFLc21ZL1dlT2J2bDNUWk41T05MQXp5V0dDdWxtNWN3S1IzeGJsQlp6WG5CNmdzXG5Pbk4yT0FkU3RjelRWQ3ljbThwY0ZVcnl0S1NLa0dFQ0F3RUFBVEFOQmdrcWhraUc5dzBCQVFVRkFBT0NBZ0VBXG5sSjAxd2NuMXZqWFhDSHVvaTdSMERKMWxseDErZGFmcXlFcVBBMjdKdStMWG1WVkdYUW9yUzFiOHhqVXFVa2NaXG5UQndiV0ZPNXo1ZFptTnZuYnlqYXptKzZvT2cwUE1hWXhoNlRGd3NJMlBPYmM3YkZ2MmVheXdQdC8xQ3BuYzQwXG5xVU1oZnZSeC9HQ1pQQ1d6My8yUlBKV1g5alFEU0hYQ1hxOEJXK0kvM2N1TERaeVkzZkVZQkIwcDNEdlZtYWQ2XG42V0hRYVVyaU4wL0xxeVNPcC9MWmdsbC90MDI5Z1dWdDA1WmliR29LK2NWaFpFY3NMY1VJaHJqMnVGR0ZkM0ltXG5KTGcxSktKN2pLU0JVUU9kSU1EdnNGVUY3WWRNdk11ckNZQTJzT05OOENaK0k1eFFWMUtTOWV2R0hNNWZtd2dTXG5PUEZ2UHp0RENpMC8xdVc5dE9nSHBvcnVvZGFjdCtFWk5rQVRYQ3ZaaXUydy9xdEtSSkY0VTRJVEVtNWFXMGt3XG42enVDOHh5SWt0N3ZoZHM0OFV1UlNHSDlqSnJBZW1sRWl6dEdJTGhHRHF6UUdZYmxoVVFGR01iQmI3amhlTHlDXG5MSjFXT0c2MkYxc3B4Q0tCekVXNXg2cFIxelQxbWhFZ2Q0TWtMYTZ6UFRwYWNyZDk1QWd4YUdLRUxhMVJXU0ZwXG5NdmRoR2s0TnY3aG5iOHIrQnVNUkM2aWVkUE1DelhxL001MGNOOEFnOGJ3K0oxYUZvKzBFSzJoV0phN2tpRStzXG45R3ZGalNkekNGbFVQaEtra1Vaa1NvNWFPdGNRcTdKdTZrV0JoTG9GWUtncHJscDFRVkIwc0daQTZvNkR0cWphXG5HNy9SazZ2YmFZOHdzTllLMnpCWFRUOG5laDVab1JaL1BKTFV0RUV0YzdZPVxuLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLSJ9	f
\.


--
-- Data for Name: shared_credentials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shared_credentials" ("credentialsId", "projectId", "role", "createdAt", "updatedAt") FROM stdin;
RA6c0BOIan2OR7lZ	e8RpyUBIAxTYUpu5	credential:owner	2025-10-16 16:37:33.579+00	2025-10-16 16:37:33.579+00
yX9lezaEQv8KPjgH	e8RpyUBIAxTYUpu5	credential:owner	2025-10-17 05:28:48.586+00	2025-10-17 05:28:48.586+00
V6F4PoZ5qguyZtAe	e8RpyUBIAxTYUpu5	credential:owner	2025-10-26 13:57:54.037+00	2025-10-26 13:57:54.037+00
ldgD9ijpvN4RpuOR	e8RpyUBIAxTYUpu5	credential:owner	2025-10-26 14:43:21.314+00	2025-10-26 14:43:21.314+00
XGvBpUk4jkPH5F8n	e8RpyUBIAxTYUpu5	credential:owner	2025-10-26 15:01:36.668+00	2025-10-26 15:01:36.668+00
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
\.


--
-- Data for Name: workflow_statistics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_statistics" ("count", "latestEvent", "name", "workflowId", "rootCount") FROM stdin;
1	2025-10-16 16:29:43.656+00	manual_success	rqlUyMiEmIGvzbdF	0
1	2025-10-16 16:40:37.228+00	data_loaded	CVzrDFsnctC7SzNS	1
15	2025-10-26 14:54:58.78+00	manual_error	CVzrDFsnctC7SzNS	0
16	2025-10-31 13:27:41.336+00	manual_success	CVzrDFsnctC7SzNS	0
\.


--
-- Data for Name: workflows_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflows_tags" ("workflowId", "tagId") FROM stdin;
CVzrDFsnctC7SzNS	sWgX1FPDnaLvmKfv
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

SELECT pg_catalog.setval('"public"."execution_entity_id_seq"', 32, true);


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

-- \unrestrict ZGDemzQbPkR5fe8zpdWR6brP5EBp8XnHRAj1AAxBfCLcCUDMNm9zhVzgWJgaFui

RESET ALL;
