SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict 2PIzb8W1qI2V901ZCCEfVozL3Omhho6XuBaKlAazwpy4GB7reL3tUp38Uj1947t

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

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag", "oauth_client_id", "refresh_token_hmac_key", "refresh_token_counter", "scopes") FROM stdin;
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid", "last_webauthn_challenge_data") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_authorizations" ("id", "authorization_id", "client_id", "user_id", "redirect_uri", "scope", "state", "resource", "code_challenge", "code_challenge_method", "response_type", "status", "authorization_code", "created_at", "expires_at", "approved_at", "nonce") FROM stdin;
\.


--
-- Data for Name: oauth_client_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_client_states" ("id", "provider_type", "code_verifier", "created_at") FROM stdin;
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
project:personalOwner	Project Owner	Project Owner	project	t	2025-10-16 15:46:08.356+00	2025-10-16 15:46:22.288+00
credential:owner	Credential Owner	Credential Owner	credential	t	2025-10-16 15:46:23.646+00	2025-10-16 15:46:23.646+00
credential:user	Credential User	Credential User	credential	t	2025-10-16 15:46:23.646+00	2025-10-16 15:46:23.646+00
workflow:owner	Workflow Owner	Workflow Owner	workflow	t	2025-10-16 15:46:24.629+00	2025-10-16 15:46:24.629+00
workflow:editor	Workflow Editor	Workflow Editor	workflow	t	2025-10-16 15:46:24.629+00	2025-10-16 15:46:24.629+00
project:admin	Project Admin	Full control of settings, members, workflows, credentials and executions	project	t	2025-10-16 15:46:08.356+00	2025-11-25 15:24:45.413+00
project:editor	Project Editor	Create, edit, and delete workflows, credentials, and executions	project	t	2025-10-16 15:46:08.356+00	2025-11-25 15:24:45.413+00
project:viewer	Project Viewer	Read-only access to workflows, credentials, and executions	project	t	2025-10-16 15:46:08.356+00	2025-11-25 15:24:45.413+00
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user" ("id", "email", "firstName", "lastName", "password", "personalizationAnswers", "createdAt", "updatedAt", "settings", "disabled", "mfaEnabled", "mfaSecret", "mfaRecoveryCodes", "lastActiveAt", "roleSlug") FROM stdin;
5a4961b6-3a89-432a-b7c1-90d805069b4f	amberbambico.54@gmail.com	Fernan	Bambico	$2a$10$speYYXYPVYv1eZHzUaKozODBdrev3InCIjJpaBC3pmW/6uqSDpa7q	{"version":"v4","personalization_survey_submitted_at":"2025-10-16T15:50:30.876Z","personalization_survey_n8n_version":"1.115.3","automationGoalDevops":["ci-cd","cloud-infrastructure-orchestration","data-syncing","incident-response","monitoring-alerting","reporting","other","ticketing-systems-integrations"],"automationGoalDevopsOther":"education","companySize":"personalUser","companyType":"education","role":"it","reportedSource":"youtube"}	2025-10-16 15:42:52.513+00	2026-01-20 02:09:56.991+00	{"userActivated": false}	f	f	\N	\N	2026-01-20	global:owner
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
Google Sheets account	U2FsdGVkX1/Fr6XiexOs9nJBT7fNrpxhOsyk4sprwiv9wApFCszw7OdP1RXgUcoIzr7taXbbwx12izh/7XePtUJbXXbO79fKxvMeZ0vlZ50++XS80i5Pk4usUr1Sw2+N3Hogw7bEfZuG5H8XTx1wNFq23Zd+3kPSOydW+gK06N3toXS6jqoRABjP1+uOfNJ8OgNug+78Fo37Dj/rpwTfX4x6ptnJ1NhPL+7hxTd8z2/zMfTBj+8qnX6lllXUGcPIjJHSq9Ojo0I4EAcCrQX35Hlb+bOjVXFRF1SgdoXiLCWbapOopsz1AWQdxmaEOb+XIQ3Ot1x0EhTTKe4F52EYSoPjdHKn6XsQ5DlNhNyNPv8MIsCLylT+WAWCQrRIqaPA8kzZJqDA/b9CDi4cGxVXllalAG8DlwIIKo0aOUbvVb2kVe2v4kN9Kyr5y3U4qAjb/2yRzAjWyZUag1cu5HZzPfZjVgmUv1azND3wphLn5gElIrGfapioHm+M+xovYnkm400Sg9PLsPy8Rt+96qeIDPnXhQ964JnHX0yMTLRn2U+015MFX05HU9HQcyOAqT6smgr/bSwxb0+T1RA/DZUUm/WDykmOa6CWHrXY53gTiBJZb0l2hkMAd8VKrGuWH5gLx+yMJNM38xa+JQKpR4TROf+diEfinLgA+Pv0G6Oy32tFPC0dQv5qbBsvVPFOfrkGaEPwBE6dj88xYX/Rw0yKeneqissdeLBbmtAkRL6XGNX9IfvFra+70LaXIOA2t0fbyku8a2a/2V4ZPAWx3nIwek8o98MZSDuOw6D81vZf5Z8WqXAutrfatKymLfdC6PiO+fdZTu5695F+DTc9iYYPcemhX6a0vbRok5IEgfYVotN5NhlMK71/CmuyXRXFApJPeE/eu8zZE0vpKx6GNk5CbpzCHvYp1Cx6wWfvRCtcozY4L8IJiHS2ZVOPb7lcXGS/FH3dqSP2V6TmdwmGot9FOvo/deJMFBZY5O8vJp84YwTknNBHUYavg1Ym1kBOJtJ3sTBFJHPaj7sUIdsbZ7IYU1LUDlSIbVuJcWHcyJVpOgqUS3546sDpNHfI0Qi4mqn0bKtYvpgDB4HXJZWW73L02FDJvbWvaL23k8dBtzPjuKQUgoYtZvqNHQcQRDIE9mqi5bB7MJ83LV2fc4ijMGv7rzgdtR/sYYtXTw0BlgPxQcLL2jap+734Md+QCMkX1u+bh7N4BebizyEoVUn/tPP2CpFeGrTwq42oR5Ci/hYlbR7XJim6Ynn+eItDAJmKUcnJ	googleSheetsOAuth2Api	2025-11-06 15:36:06.934+00	2025-11-07 16:40:24.732+00	YiO5g4n9aj4N6K5r	f
Google Contacts account	U2FsdGVkX19BZ4DWqEiKuXUkUKSn8MYJhZmtwfmaHWN3iPB/XWH51COQ9fVqOM6+f/5sWRotTL6dglC1TOIQQXGOuwkloG3EhS4T35aHh1wlE6Fu0kodyBjMSiuMRK/8Hy2MzFwHM9v4I7epOimZ8JItpCksGzLnRme3Z9zDbCvMxnbHEZM08qvl2PplCpV58BNSe4GP/66KvXDomKrIzPhysSm4s2z12qkhPxih2D8i6JUYkxWyOpN+bNlbpj7b3yTlX6amdzU0KoDjLmeq/q79oFaiXd5ZsLQZP5MPD7KQ8UXG/jTdf0vPiJkRezUskKYuXC1zYOYU3DJECbn1qiZ3QVVqwe9+BPvlV3e4VZ0kPvmuqgtG6N1ujF4hcvjfCVvNipDtI1eId+c0c9Qb6ghswNxwNS5Zfq8cjxSc5mJHsmjFjgzfq+/gFiF4MKqeyHXecnFmjGCujier+O9EBE5GMhu3M0Jb1cVynwF/fmCqZbizsgm96ESO88GhTL/trZGqthMBZ9ta2Om/vYShgt7R+6YT1ZDMNqhDIzQo/xfpsrt/NSOTJ6tXmRSGHKNOk//SS0zFw34fvCY9zr09mzu8CXaI3zF0eFDmmTf5B3i4mrb0A823h1yrxoPNPE6hBEMNSkI/igQD/lFlhA6hAZ2eYt1Q869etL33b91KJavQYsHlqBiPXbxks8VIdqLtc5BiZ+wJhN80iJU3XqtE9v314oxWaj1TnuN92NEi9xn4stKE0UoPu+xkQJ4/lxXYa+FVhv/C7skv9qyXEjGKnQzA0MZ8pWgjyTq/LFSLc6wNiQslrL+EFuMhLSHY/txDaC2CrQcfQsPE/MJjLNDFh/+63LciSWzjzauT0bGH4T33GuHHbJmqIHpzZbFm8M8AavqtBsXIlCXdSFMitub0qeJvXV9cYL0QGlBxaDYQUQ2iEVMnni02EOvpz7uFhim9OlofvpYY1atej8upJuJG/gsga9YvrORAOG4A8gsVxaGXuD71EXmA5FnwzHasJOlD	googleContactsOAuth2Api	2025-11-07 17:38:45.111+00	2025-11-07 17:39:24.04+00	LOg9qvC6ODDyOno0	f
Slack account	U2FsdGVkX1/7CE6+cZqigSpI5NRIaoFpr2YrfoHevaogdS59omt6Kr/dDQpe9xuDhI1d+iewRCPbCUNqxHxNMIgS9pwXZOstHeO9E5l1lyRgB3ToLEXjzlSBJsPv3ZKFWa2zh7gXDpFJ/m6ea4HGkxTmlEy8pOwlcUVRKjIWCadEq7m/4nhMskiBTreMoKYWdv1BMaw9dsnZSlCnN9VKRM6d1wLRV2Yv/PPkuLDxoPnnp9nVtHA5njPDLbPu/4iGPk9smrOHJAKJgBRB0zM5vrrixGSQb0N+JOmMNkfM6fMfYXVen7FW/P0llre2RXSTSzoSEKrzmD+EvPg60tRu1XvXGE6JG3RBmeYsrTpQxL7PGqSVWLaLVNalmNMUbMcnGcYM9VQP6cacwd4cpGSJwQ2JjfGq1qduv7Ej/r9nfTVfOq8WAVSS9FI7JVqAOCEtnq+uXU4euZF5PPGwEiIIp+dQe2H0nY1OkVMgtcH23wYRqtlUA52yNZ1IFzMFgeJI/teAg5Hq78krh9qOkMgmPI82jo6MchyEWUzt7+qNPGeOxQ9qowcOwIaZnA4O45tKfVxgoXBNpGc6rc5YatYcOqUmGZ/syhm4vFPwONSm4vgRMytNeylTrswBPYUUSwkqE1EgHiFxZg5ePSkWoop/Fq51vHyMXPamJIS70YwSLun/0Zo7IWHRfALVd3T/PgOiy0pyrFnoCACldfOl1l0ecGIxQgd2jfUgZFKxgme+QyZ87uzaX8VRQTDhatXR7vdMjIDY2yFJBPlZj31M8xyp6p5asdCrjU8ke9PmvymG4u714W4XonhBGHidCfIXxEOxHbdSsg4+60IAbLokyILhzenZ10O6y2Vmj+BU803obWmdVdcCLHPzQbh9kDz+L7oK/1XwmE1owjzLcbRQoFvWnOcCx/4/vpNB9lrMgfkhbEE4XSTQDtIHVmE+pL7U4578vM6GRE1RyOraogrYQMZA0+LkB5A9sMTc5wsl6N9JHcVbGSz4ee+M6wHxlqevtv1y1AHPHIT0+yXpeCezGKu8HfEZz7NSaFOyE1jRyyL4MHtscbyfG2TPczUqeYbHMXyhc/OeIdchQ/cuZcHat4AEF/cR/X6PI+49NCQOa+73WoAbZciukWltuV9eDjEOigYUA+sJxEBL7XY5HxHztpL1rg==	slackOAuth2Api	2025-11-07 16:26:24.271+00	2025-11-07 16:38:42.822+00	kPI2sESxpdDipRRh	f
Gmail account	U2FsdGVkX19qElueecI2ColgcPeWP55Svbv/qbk9vNq8B/RkG8ElNwCK4gR0TERaR95owUlzKCcse9ZQNFIL3AfyNMW6kZYZyG71O2ZBhoLi17T8Lx9ldP62IeRNKId4Dyvp/gVviewHLinC0LFpkSX2n13U5NxjaApo981mM+9/iKwaPzhdzSBgOHBbBWP9tZvf+XBmozT/lFGxLr+z4An/P8cOfpYoXmn0bljUPbTDwR3CiDqS9gmY1z++sTsTgrg5FY0JcA6J/sPUmXpNNmoHpnR0UwmAUfCvCrPBzpOGaElrstExZtqilqylfWDrpKOho7m6bUBwvZnUmKQHXqYWFNl2ZKRrW8o3NHZ5pQlkY6pWqiEjg3MrIwjGzh3KYWTdXKEhHPbyRT1PQoObaV9g0OQ1/rEHsa1fkD4kf70vWMyB8dfMPQKlc5sj6UnijHgF9Iw3hOKzKIl9RNXUI+xsEbQm+k94RUf8XFyDCrUApnO4YAxBg//05CY9w1F3MCUv+/7n4fKUhl83yQ7hAQ9lFmaGb1SPR2t4PznZSgumaXbbxBBGxg/Xf+s4ANIVKXqnv+LjjOM5jHhdyuiF8XeJwiuRWSb1tNOdzSFPiqSOZskw9MFbbUnkhVaGtQMjwjcH8OK6IyUF/Qs2KFpwiJ0T56eYJXELbEWj6tHUMYR+ncvJvZzS+iQxPnAl1JNny9HrjYyYB8z5NJ2WIxw5UNNkWTFVAmvSSPfGzJdW1AUavzmwmtcFM6iUa4LR1OqqpRIh13F0FKmWQKpVHcS3Tj8tfAAAHdW5d/gSte6Rjlnn5wMG7jclL4d3JdYhwod5xpj4ALzli1a8iZX0FqgeKFVkGMKj4Eu5uc67qIWzQLSb9zF/O6NW7R8KjyOoOf8dTY+i0NMTkzKWlC22nVkq2jM3CBS8I6DF4VmsAEAx4gcjeC5cbuo4Y9z/FCxO+RLP5kBDahIJ5FjNnxz+L2PRs+njUCaqDVk3ZurEKLJLvUEllylqp2Saowerd3tVv70+Rz6zbS7MUCC7DO+82iKi4cDbuPOZyH/VjNOMdtfK7oPQnX4yjvHAICW0URZYjISyr+/OJkfxrFbO+rjNQXLgonNfgIJbxK/5o34a3/fKp1hcpoxSapajazowmT40/MvY7dq9lC9YhU/+VTXjK2kB2a0VKf3d6/1BUyeCk0fc8zUc8SXZs2c5km9P+D4wk+mpole8YR7mlRTxM4jqoI48AT+k2z1zCyxH+iFjDZpeJn1cgiUx2zvuZPRoBgsP8K4mWUtJOz+hiYsnl3u6Vs0vxylIdeSlI0R0njj+GfkQNSyCrlonvpKG6lg4jkvlcFiglzPyshrPJhLBfpmwppwn85zdePUfZ1K0iyAVjNwKkIMk8bej3PRyZbb02oMhd+PDVKaaDmeyjdgSm8MIgcCpsMHqrgz0s0/M8r7jHbOauzX06NQ9loP5xvaGu2JzswFALjbdvmkaRQIHsC7WlhaqZMwjJGSShjSZKe/ESYEzPyjSuREx8EIE5R/dg9ljt2fN4GIBri8H/leIwCvyMcEqhnahDU37s/4RgAyYsTmmNpy/rOh5QpXyKe+CdcInjx0XtorKVUAXbHsh+HQUO8VvfDn6H/WRTjUezzhOFZw7pY4jx+ZZCLdcAtybdYBuvrB0MFB0oo+5POXsTteAvnKKMCdtV+J0rwMw/Ss9WQ6g0zXqxG5/8FfebKx9sBD+U/AL	gmailOAuth2	2025-10-26 13:57:54.037+00	2025-11-07 16:40:29.759+00	V6F4PoZ5qguyZtAe	f
\.


--
-- Data for Name: chat_hub_agents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_agents" ("id", "name", "description", "systemPrompt", "ownerId", "credentialId", "provider", "model", "createdAt", "updatedAt", "tools") FROM stdin;
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project" ("id", "name", "type", "createdAt", "updatedAt", "icon", "description") FROM stdin;
e8RpyUBIAxTYUpu5	Fernan Bambico <amberbambico.54@gmail.com>	personal	2025-10-16 15:44:23.022+00	2025-10-16 15:47:54.322+00	\N	\N
\.


--
-- Data for Name: folder; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."folder" ("id", "name", "parentFolderId", "projectId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: workflow_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_entity" ("name", "active", "nodes", "connections", "createdAt", "updatedAt", "settings", "staticData", "pinData", "versionId", "triggerCount", "id", "meta", "parentFolderId", "isArchived", "versionCounter", "description") FROM stdin;
My workflow 2	f	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"8d5f7278-84ce-414d-83cb-92d7c68b6c9a","name":"When clicking ‘Execute workflow’"},{"parameters":{"operation":"create","base":{"__rl":true,"value":"app9OlQDgg06lIquc","mode":"list","cachedResultName":"AI Project Tracker","cachedResultUrl":"https://airtable.com/app9OlQDgg06lIquc"},"table":{"__rl":true,"value":"tblxlfywGBNZrylPJ","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/app9OlQDgg06lIquc/tblxlfywGBNZrylPJ"},"columns":{"mappingMode":"defineBelow","value":{"Task Name":"Create Module for n8n Course","Description":"For everyone that wants to be Familiar with n8n"},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Completed","value":"Completed"},{"name":"Blocked","value":"Blocked"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Low","value":"Low"},{"name":"Medium","value":"Medium"},{"name":"High","value":"High"},{"name":"Critical","value":"Critical"}],"readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Milestone","displayName":"Milestone","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Resource Allocation","displayName":"Resource Allocation","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Reference Image","displayName":"Reference Image","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Estimated Hours","displayName":"Estimated Hours","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Days Until Due","displayName":"Days Until Due","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Is Overdue","displayName":"Is Overdue","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Assigned Team Member Count","displayName":"Assigned Team Member Count","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Total Allocated Hours","displayName":"Total Allocated Hours","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Milestone Status","displayName":"Milestone Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Project Status","displayName":"Project Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Task Summary (AI)","displayName":"Task Summary (AI)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Risk Assessment (AI)","displayName":"Risk Assessment (AI)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.1,"position":[208,0],"id":"443736dd-5d82-4b2f-9789-9dfa93e54d94","name":"Create a record","credentials":{"airtableTokenApi":{"id":"yX9lezaEQv8KPjgH","name":"Airtable Personal Access Token account 2"}}}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}}	2025-11-06 15:24:22.717+00	2026-01-18 14:25:13.849+00	{"executionOrder":"v1"}	\N	{}	40e677c7-515b-44d8-8afe-580cfea9128c	0	voZ63FWwaK7OZ3qy	{"templateCredsSetupCompleted":true}	\N	f	2	\N
1.N8n Course	f	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"2807691f-9cbc-4ae0-b99f-77abaff9ea3e","name":"When clicking ‘Execute workflow’"},{"parameters":{"sendTo":"amberbambico.54@gmail.com","subject":"hello","message":"hello","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.1,"position":[560,0],"id":"82b41fe9-0588-4c8c-aa14-a232fd07ec17","name":"Send a message","webhookId":"54d7bf6c-3c19-49a6-abd4-7233cb96feb4","credentials":{"gmailOAuth2":{"id":"V6F4PoZ5qguyZtAe","name":"Gmail account"}}},{"parameters":{"content":"## 1.\\n**Double click** to edit me. [Guide](https://docs.n8n.io/workflows/sticky-notes/)","width":448},"type":"n8n-nodes-base.stickyNote","position":[-16,-192],"typeVersion":1,"id":"1fa10d5e-c2c2-41b6-b6c5-9b32e7998bbc","name":"Sticky Note"},{"parameters":{"operation":"appendOrUpdate","documentId":{"__rl":true,"mode":"list","value":""},"sheetName":{"__rl":true,"mode":"list","value":""}},"type":"n8n-nodes-base.googleSheets","typeVersion":4.7,"position":[208,0],"id":"72f88487-827c-409c-a9db-6d0b93b75055","name":"Append or update row in sheet"}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Append or update row in sheet","type":"main","index":0}]]},"Append or update row in sheet":{"main":[[{"node":"Send a message","type":"main","index":0}]]}}	2025-10-16 16:29:38.221+00	2025-10-31 13:29:29.787+00	{"executionOrder":"v1"}	{"node:Schedule Trigger":{"recurrenceRules":[]}}	{}	46327ea6-6714-42a4-97d0-0ac05253e45f	1	CVzrDFsnctC7SzNS	{"templateCredsSetupCompleted":true}	\N	f	1	\N
My workflow	f	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.2,"position":[0,0],"id":"2de74a8d-0902-46e1-9259-058f2175b593","name":"Schedule Trigger"}]	{}	2025-10-16 16:29:34.384+00	2025-10-26 12:12:30.517+00	{"executionOrder":"v1"}	{"node:Schedule Trigger":{"recurrenceRules":[]}}	{}	dc3dff43-103d-4a23-aae0-6ff5172f8433	1	rqlUyMiEmIGvzbdF	\N	\N	f	1	\N
1st Activity Workflow	f	[{"parameters":{"formTitle":"Test Info","formDescription":"Please Fill out the Form Below","formFields":{"values":[{"fieldLabel":"Full Name","placeholder":"Juan Tamad","requiredField":true},{"fieldLabel":"Email","fieldType":"email","placeholder":"Hello@gmail.com","requiredField":true},{"fieldLabel":"Phone Number","placeholder":"+63 912 345 6789","requiredField":true},{"fieldLabel":"Description","placeholder":"Please Provide a description below","requiredField":true}]},"options":{"appendAttribution":false}},"type":"n8n-nodes-base.formTrigger","typeVersion":2.3,"position":[0,0],"id":"7676b103-5de1-4298-83b4-8b09edc67ce8","name":"On form submission","webhookId":"b2482471-8fb8-4960-a39e-9464d2167715"},{"parameters":{"operation":"append","documentId":{"__rl":true,"value":"1D-2PlDusBNFCV6JIKdUze1dd0C9qOT6JhlTSI1IlauI","mode":"list","cachedResultName":"Activity n8n","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1D-2PlDusBNFCV6JIKdUze1dd0C9qOT6JhlTSI1IlauI/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":"gid=0","mode":"list","cachedResultName":"Sheet1","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1D-2PlDusBNFCV6JIKdUze1dd0C9qOT6JhlTSI1IlauI/edit#gid=0"},"columns":{"mappingMode":"defineBelow","value":{"Full Name":"={{ $json['Full Name'] }}","Email":"={{ $json.Email }}","Phone Number":"={{ $json['Phone Number'] }}","Description":"={{ $json.Description }}"},"matchingColumns":[],"schema":[{"id":"Full Name","displayName":"Full Name","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Email","displayName":"Email","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Phone Number","displayName":"Phone Number","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.googleSheets","typeVersion":4.7,"position":[208,0],"id":"dd6fe731-13c7-47e2-b72c-bf6b18e4dd28","name":"Append row in sheet","credentials":{"googleSheetsOAuth2Api":{"id":"YiO5g4n9aj4N6K5r","name":"Google Sheets account"}}},{"parameters":{"authentication":"oAuth2","select":"channel","channelId":{"__rl":true,"value":"C09REAYK8FP","mode":"list","cachedResultName":"ai"},"text":"=A New Client has been Added to the Data\\nFulle Name:{{ $json['Full Name'] }}\\nEmail:{{ $json.Email }}\\nPhone Number:{{ $json['Phone Number'] }}\\nDescription:{{ $json.Description }}","otherOptions":{}},"type":"n8n-nodes-base.slack","typeVersion":2.3,"position":[416,0],"id":"d82a7d3f-89b6-4147-bc45-9c3cfc3943d8","name":"Send a message","webhookId":"444f31bf-afcc-40bb-acc5-8aa50db553ab","credentials":{"slackOAuth2Api":{"id":"kPI2sESxpdDipRRh","name":"Slack account"}}},{"parameters":{"sendTo":"={{ $('Append row in sheet').item.json.Email }}","subject":"Thank you for submitting the form","emailType":"text","message":"=Hi {{ $('Append row in sheet').item.json['Full Name'] }},\\n\\nThank you for taking the time to fill out our form.\\nWe’ve received your information successfully and will review it shortly.\\n\\nIf you have any questions, feel free to reply to this message.\\nWe appreciate your time and interest!\\n\\nBest regards,\\nThe Team","options":{"appendAttribution":false}},"type":"n8n-nodes-base.gmail","typeVersion":2.1,"position":[624,0],"id":"9b321c83-b0de-4a20-94b3-8a8ab71f3019","name":"Send a message1","webhookId":"c5080767-d0f8-40d6-a8d9-b66396e79c3f","credentials":{"gmailOAuth2":{"id":"V6F4PoZ5qguyZtAe","name":"Gmail account"}}},{"parameters":{"familyName":"={{ $('Append row in sheet').item.json['Full Name'] }}","additionalFields":{"emailsUi":{"emailsValues":[{"type":"work","value":"={{ $('Append row in sheet').item.json.Email }}"}]},"phoneUi":{"phoneValues":[{"type":"work","value":"={{ $('Append row in sheet').item.json['Phone Number'] }}"}]}}},"type":"n8n-nodes-base.googleContacts","typeVersion":1,"position":[832,0],"id":"2ccae68f-4f7e-4f99-8baf-c9ee7948544a","name":"Create a contact","credentials":{"googleContactsOAuth2Api":{"id":"LOg9qvC6ODDyOno0","name":"Google Contacts account"}}},{"parameters":{"content":"## Trigger: Google Sheets\\n\\nName, email, phone number, description\\n"},"type":"n8n-nodes-base.stickyNote","position":[128,-208],"typeVersion":1,"id":"ebd56b3d-093b-45df-85de-d5649e3a620c","name":"Sticky Note"},{"parameters":{"content":"## Slack: Notify Your Team\\n\\nAdd a Slack node to send a message to your team's Channel asking to handle the client's Request\\n\\nthe message should show\\nName, email, phone number, description\\n\\n\\n","height":208,"width":304},"type":"n8n-nodes-base.stickyNote","position":[320,176],"typeVersion":1,"id":"5b68b80b-420a-492e-9228-9f5f33a57492","name":"Sticky Note1"},{"parameters":{"content":"## Gmail: Thank you Email to Client\\n\\nAdd a Gmail node to send a thank you email to the client's email address from the sheet.\\n","height":208},"type":"n8n-nodes-base.stickyNote","position":[544,-240],"typeVersion":1,"id":"ec0aedd1-bfd4-42b5-87a0-6fcac780de03","name":"Sticky Note2"},{"parameters":{"content":"## Google Contacts: Add Client\\n\\nAdd a Google Contacts node to create a new contact using the name, email, and phone number from your google sheet.\\n","height":208},"type":"n8n-nodes-base.stickyNote","position":[800,176],"typeVersion":1,"id":"74935353-81ef-4aef-b6bc-543b2f827367","name":"Sticky Note3"}]	{"On form submission":{"main":[[{"node":"Append row in sheet","type":"main","index":0}]]},"Append row in sheet":{"main":[[{"node":"Send a message","type":"main","index":0}]]},"Send a message":{"main":[[{"node":"Send a message1","type":"main","index":0}]]},"Send a message1":{"main":[[{"node":"Create a contact","type":"main","index":0}]]}}	2025-11-07 16:46:55.045+00	2025-11-07 17:50:23.919+00	{"executionOrder":"v1"}	\N	{}	1df38851-8863-4a61-9f11-86b9292e0641	0	1hiCHSIWj6hNUOQB	{"templateCredsSetupCompleted":true}	\N	f	1	\N
First Workflow	f	[{"parameters":{"formTitle":"Contact Form","formDescription":"Contact us when you have any problem to solve","formFields":{"values":[{"fieldLabel":"First Name","placeholder":"Enter you name","requiredField":true},{"fieldLabel":"Last Name","placeholder":"Enter your last name","requiredField":true},{"fieldLabel":"Email","fieldType":"email","placeholder":"Enter Your Email","requiredField":true},{"fieldLabel":"Description","placeholder":"Elaborate the problem"},{"fieldLabel":"Course Type","fieldType":"dropdown","fieldOptions":{"values":[{"option":"n8n course"},{"option":"Zapier couse"},{"option":"Midjourney course"}]}}]},"options":{}},"type":"n8n-nodes-base.formTrigger","typeVersion":2.3,"position":[0,0],"id":"cd57f4ca-774e-469e-95bf-b95c08107ccd","name":"On form submission","webhookId":"151d9ef3-a068-46f0-9527-4f50d54e0d0e"},{"parameters":{"operation":"append","documentId":{"__rl":true,"value":"19UYfLf85w9RCfKInEBL1SMfkfkuCyICxE2wcSK6CGNU","mode":"list","cachedResultName":"Customer Data","cachedResultUrl":"https://docs.google.com/spreadsheets/d/19UYfLf85w9RCfKInEBL1SMfkfkuCyICxE2wcSK6CGNU/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":"gid=0","mode":"list","cachedResultName":"Sheet1","cachedResultUrl":"https://docs.google.com/spreadsheets/d/19UYfLf85w9RCfKInEBL1SMfkfkuCyICxE2wcSK6CGNU/edit#gid=0"},"columns":{"mappingMode":"defineBelow","value":{"First Name ":"={{ $json['First Name'] }}","Last Name":"={{ $json['Last Name'] }}","Email":"={{ $json.Email }}","Description":"={{ $json.Description }}","Course Type":"={{ $json['Course Type'] }}"},"matchingColumns":[],"schema":[{"id":"First Name ","displayName":"First Name ","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Last Name","displayName":"Last Name","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Email","displayName":"Email","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Course Type","displayName":"Course Type","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.googleSheets","typeVersion":4.7,"position":[208,0],"id":"32e7a53c-aa23-4f88-a7b4-deffa7a668de","name":"Append row in sheet","credentials":{"googleSheetsOAuth2Api":{"id":"YiO5g4n9aj4N6K5r","name":"Google Sheets account"}}},{"parameters":{"sendTo":"=amberbambico.54@gmail.com","subject":"Thank you for your submission","emailType":"text","message":"=Hey {{ $json['First Name '] }}\\n\\nThank you for your submission, we want to confimr that we recieve a message and we will be contacting you soon.\\n\\nBest regards,\\nSupport Team","options":{"appendAttribution":false}},"type":"n8n-nodes-base.gmail","typeVersion":2.1,"position":[416,0],"id":"9dd9f512-5321-4deb-8846-764feee5e27e","name":"Send a message","webhookId":"5e3777a4-f485-4117-a7a5-c3d89fd13dba","credentials":{"gmailOAuth2":{"id":"V6F4PoZ5qguyZtAe","name":"Gmail account"}}},{"parameters":{"authentication":"oAuth2","select":"channel","channelId":{"__rl":true,"value":"C09REAYK8FP","mode":"list","cachedResultName":"ai"},"text":"=The new Client Submitted the form\\nFirst Name:{{ $('On form submission').item.json['First Name'] }}\\nEmail:{{ $('On form submission').item.json.Email }}\\nDescription:{{ $('On form submission').item.json.Description }}","otherOptions":{}},"type":"n8n-nodes-base.slack","typeVersion":2.3,"position":[624,0],"id":"2cc6c84e-be2a-4d23-aab3-d4e682b2ba23","name":"Send a message1","webhookId":"52d9201a-d517-4886-bf5e-af2bcdfdc1c3","credentials":{"slackOAuth2Api":{"id":"kPI2sESxpdDipRRh","name":"Slack account"}}}]	{"On form submission":{"main":[[{"node":"Append row in sheet","type":"main","index":0}]]},"Append row in sheet":{"main":[[{"node":"Send a message","type":"main","index":0}]]},"Send a message":{"main":[[{"node":"Send a message1","type":"main","index":0}]]}}	2025-11-06 15:24:29.028+00	2025-11-07 16:45:38.442+00	{"executionOrder":"v1"}	\N	{"Append row in sheet":[{"json":{"First Name ":"Fernan","Last Name":"Bambico","Email":"amberbambico.54@gmail.com","Description":"test","Course Type":"n8n Masterclass"}}]}	98f1a092-d1bc-4097-9e0f-24c05477cc83	0	ucN5q0JcZhOAY6id	{"templateCredsSetupCompleted":true}	\N	f	1	\N
\.


--
-- Data for Name: chat_hub_sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_sessions" ("id", "title", "ownerId", "lastMessageAt", "credentialId", "provider", "model", "workflowId", "createdAt", "updatedAt", "agentId", "agentName", "tools") FROM stdin;
\.


--
-- Data for Name: execution_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_entity" ("id", "finished", "mode", "retryOf", "retrySuccessId", "startedAt", "stoppedAt", "waitTill", "status", "workflowId", "deletedAt", "createdAt") FROM stdin;
55	t	manual	\N	\N	2026-01-18 14:24:03.629+00	2026-01-18 14:24:04.911+00	\N	success	voZ63FWwaK7OZ3qy	\N	2026-01-18 14:24:02.271+00
62	t	manual	\N	\N	2026-01-18 15:21:29.294+00	2026-01-18 15:21:33.84+00	\N	success	rqlUyMiEmIGvzbdF	\N	2026-01-18 15:21:28.472+00
56	t	manual	\N	\N	2026-01-18 15:01:34.184+00	2026-01-18 15:01:34.521+00	\N	success	rqlUyMiEmIGvzbdF	\N	2026-01-18 15:01:33.333+00
58	t	manual	\N	\N	2026-01-18 15:15:15.319+00	2026-01-18 15:15:20.019+00	\N	success	rqlUyMiEmIGvzbdF	\N	2026-01-18 15:15:14.47+00
63	t	manual	\N	\N	2026-01-18 15:21:48.903+00	2026-01-18 15:21:50.256+00	\N	success	rqlUyMiEmIGvzbdF	\N	2026-01-18 15:21:48.085+00
64	t	manual	\N	\N	2026-01-18 15:27:12.761+00	2026-01-18 15:27:18.204+00	\N	success	rqlUyMiEmIGvzbdF	\N	2026-01-18 15:27:11.121+00
57	f	manual	\N	\N	2026-01-18 15:08:59.342+00	2026-01-18 15:09:25.784+00	\N	error	rqlUyMiEmIGvzbdF	\N	2026-01-18 15:08:58.51+00
59	t	manual	\N	\N	2026-01-18 15:18:39.163+00	2026-01-18 15:18:42.428+00	\N	success	rqlUyMiEmIGvzbdF	\N	2026-01-18 15:18:38.337+00
60	t	manual	\N	\N	2026-01-18 15:19:08.985+00	2026-01-18 15:19:10.895+00	\N	success	rqlUyMiEmIGvzbdF	\N	2026-01-18 15:19:08.168+00
61	t	manual	\N	\N	2026-01-18 15:19:29.43+00	2026-01-18 15:19:32.49+00	\N	success	rqlUyMiEmIGvzbdF	\N	2026-01-18 15:19:28.287+00
\.


--
-- Data for Name: chat_hub_messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_messages" ("id", "sessionId", "previousMessageId", "revisionOfMessageId", "retryOfMessageId", "type", "name", "content", "provider", "model", "workflowId", "executionId", "createdAt", "updatedAt", "agentId", "status") FROM stdin;
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
55	{"id":"voZ63FWwaK7OZ3qy","name":"My workflow 2","active":false,"nodes":[{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"8d5f7278-84ce-414d-83cb-92d7c68b6c9a","name":"When clicking ‘Execute workflow’"},{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app9OlQDgg06lIquc","mode":"list","cachedResultName":"AI Project Tracker","cachedResultUrl":"https://airtable.com/app9OlQDgg06lIquc"},"table":{"__rl":true,"value":"tblxlfywGBNZrylPJ","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/app9OlQDgg06lIquc/tblxlfywGBNZrylPJ"},"columns":{"mappingMode":"defineBelow","value":{"Task Name":"Create Module for n8n Course","Description":"For everyone that wants to be Familiar with n8n"},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Completed","value":"Completed"},{"name":"Blocked","value":"Blocked"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Low","value":"Low"},{"name":"Medium","value":"Medium"},{"name":"High","value":"High"},{"name":"Critical","value":"Critical"}],"readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Milestone","displayName":"Milestone","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Resource Allocation","displayName":"Resource Allocation","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Reference Image","displayName":"Reference Image","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Estimated Hours","displayName":"Estimated Hours","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Days Until Due","displayName":"Days Until Due","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Is Overdue","displayName":"Is Overdue","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Assigned Team Member Count","displayName":"Assigned Team Member Count","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Total Allocated Hours","displayName":"Total Allocated Hours","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Milestone Status","displayName":"Milestone Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Project Status","displayName":"Project Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Task Summary (AI)","displayName":"Task Summary (AI)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Risk Assessment (AI)","displayName":"Risk Assessment (AI)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.1,"position":[208,0],"id":"443736dd-5d82-4b2f-9789-9dfa93e54d94","name":"Create a record","credentials":{"airtableTokenApi":{"id":"yX9lezaEQv8KPjgH","name":"Airtable Personal Access Token account 2"}}}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"4"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12","runtimeData":"13"},"Create a record",["14","4"],{"When clicking ‘Execute workflow’":"15","Create a record":"16"},{},{},[],{},{},{},{"version":1,"establishedAt":1768746243964,"source":"17"},"When clicking ‘Execute workflow’",["18"],["19"],"manual",{"startTime":1768746243967,"executionIndex":0,"source":"20","hints":"21","executionTime":3,"executionStatus":"22","data":"23"},{"startTime":1768746243971,"executionIndex":1,"source":"24","hints":"25","executionTime":938,"executionStatus":"22","data":"26"},[],[],"success",{"main":"27"},["28"],[],{"main":"29"},["30"],{"previousNode":"14"},["31"],["32"],["33"],{"json":"34","pairedItem":"35"},{"json":"36","pairedItem":"37"},{},{"item":0},{"id":"38","createdTime":"39","fields":"40"},{"item":0},"recF9Vs2mxZdMNyuA","2026-01-18T14:24:05.000Z",{"Task Name":"41","Description":"42","Days Until Due":"43","Is Overdue":"44","Assigned Team Member Count":0,"Total Allocated Hours":0,"Task Summary (AI)":"45","Risk Assessment (AI)":"46"},"Create Module for n8n Course","For everyone that wants to be Familiar with n8n",{"specialValue":"47"},"Yes",{"state":"48","errorType":"49","value":null,"isStale":false},{"state":"48","errorType":"49","value":null,"isStale":false},"NaN","error","emptyDependency"]
56	{"id":"rqlUyMiEmIGvzbdF","name":"My workflow","active":false,"nodes":[{"parameters":{"public":false,"availableInChat":false,"options":{}},"type":"@n8n/n8n-nodes-langchain.chatTrigger","typeVersion":1.4,"position":[0,0],"id":"dcd3ab5e-4e70-4519-842f-b57ceec7ac05","name":"When chat message received","webhookId":"e9052a3f-90dd-48b5-92c7-804a3555974e"}],"connections":{},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{},{"runData":"4","pinData":"5","lastNodeExecuted":"6"},{"contextData":"7","nodeExecutionStack":"8","metadata":"9","waitingExecution":"10","waitingExecutionSource":"11","runtimeData":"12"},{"When chat message received":"13"},{},"When chat message received",{},[],{},{},{},{"version":1,"establishedAt":1768748494516,"source":"14"},["15"],"manual",{"startTime":1768748494518,"executionIndex":0,"source":"16","hints":"17","executionTime":2,"executionStatus":"18","data":"19"},[],[],"success",{"main":"20"},["21"],["22"],{"json":"23","pairedItem":"24"},{"sessionId":"25","action":"26","chatInput":"27"},{"item":0},"a3017bb033ba45d1b22fd188c73ae757","sendMessage","hello"]
57	{"id":"rqlUyMiEmIGvzbdF","name":"My workflow","active":false,"nodes":[{"parameters":{"public":false,"availableInChat":false,"options":{}},"type":"@n8n/n8n-nodes-langchain.chatTrigger","typeVersion":1.4,"position":[0,0],"id":"dcd3ab5e-4e70-4519-842f-b57ceec7ac05","name":"When chat message received","webhookId":"e9052a3f-90dd-48b5-92c7-804a3555974e"},{"parameters":{"aiAgentStarterCallout":"","promptType":"auto","text":"={{ $json.chatInput }}","hasOutputParser":false,"needsFallback":false,"options":{}},"type":"@n8n/n8n-nodes-langchain.agent","typeVersion":3,"position":[208,0],"id":"d9f8e033-6e03-4357-9be0-bd83843c5f4b","name":"AI Agent"},{"parameters":{"notice":"","model":{"__rl":true,"mode":"list","value":"gpt-4.1-mini"},"responsesApiEnabled":true,"builtInTools":{},"options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatOpenAi","typeVersion":1.3,"position":[80,224],"id":"8f762b9d-ba6c-414e-829b-9f6c3103656d","name":"OpenAI Chat Model","credentials":{"openAiApi":{"id":"ldgD9ijpvN4RpuOR","name":"Youtube test"}}}],"connections":{"When chat message received":{"main":[[{"node":"AI Agent","type":"main","index":0}]]},"OpenAI Chat Model":{"ai_languageModel":[[{"node":"AI Agent","type":"ai_languageModel","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{},{"error":"4","runData":"5","pinData":"6","lastNodeExecuted":"7"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12","runtimeData":"13"},{"level":"14","tags":"15","description":"16","timestamp":1768748965406,"context":"17","functionality":"18","name":"19","node":"20","messages":"21","message":"22","stack":"23"},{"When chat message received":"24","OpenAI Chat Model":"25","AI Agent":"26"},{},"AI Agent",{},["27"],{"OpenAI Chat Model":"28"},{},{},{"version":1,"establishedAt":1768748939671,"source":"29"},"warning",{"reWrapped":true},"You exceeded your current quota, please check your plan and billing details. For more information on this error, read the docs: https://platform.openai.com/docs/guides/error-codes/api-errors.",{},"regular","NodeOperationError",{"parameters":"30","type":"31","typeVersion":3,"position":"32","id":"33","name":"7"},["22"],"Insufficient quota detected. <a href=\\"https://docs.n8n.io/integrations/builtin/app-nodes/n8n-nodes-langchain.openai/common-issues/#insufficient-quota\\" target=\\"_blank\\">Learn more</a> about resolving this issue","NodeOperationError: Insufficient quota detected. <a href=\\"https://docs.n8n.io/integrations/builtin/app-nodes/n8n-nodes-langchain.openai/common-issues/#insufficient-quota\\" target=\\"_blank\\">Learn more</a> about resolving this issue\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/@n8n+n8n-nodes-langchain@file+packages+@n8n+nodes-langchain_20900c8302166d11a7199f732c8d7bf5/node_modules/@n8n/n8n-nodes-langchain/nodes/agents/Agent/agents/ToolsAgent/V3/execute.ts:583:12\\n    at Array.forEach (<anonymous>)\\n    at ExecuteContext.toolsAgentExecute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/@n8n+n8n-nodes-langchain@file+packages+@n8n+nodes-langchain_20900c8302166d11a7199f732c8d7bf5/node_modules/@n8n/n8n-nodes-langchain/nodes/agents/Agent/agents/ToolsAgent/V3/execute.ts:572:16)\\n    at processTicksAndRejections (node:internal/process/task_queues:105:5)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/@n8n+n8n-nodes-langchain@file+packages+@n8n+nodes-langchain_20900c8302166d11a7199f732c8d7bf5/node_modules/@n8n/n8n-nodes-langchain/nodes/agents/Agent/V3/AgentV3.node.ts:130:10)\\n    at WorkflowExecute.executeNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_08b575bec2313d5d8a4cc75358971443/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1074:8)\\n    at WorkflowExecute.runNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_08b575bec2313d5d8a4cc75358971443/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1255:11)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_08b575bec2313d5d8a4cc75358971443/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1691:27\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_08b575bec2313d5d8a4cc75358971443/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:2307:11",["34"],["35"],["36"],{"node":"37","data":"38","source":"39"},["40"],"manual",{"aiAgentStarterCallout":"41","promptType":"42","text":"43","hasOutputParser":false,"needsFallback":false,"options":"44"},"@n8n/n8n-nodes-langchain.agent",[208,0],"d9f8e033-6e03-4357-9be0-bd83843c5f4b",{"startTime":1768748935876,"executionTime":0,"executionIndex":0,"executionStatus":"45","data":"46","source":"47"},{"startTime":1768748959888,"executionTime":5516,"executionIndex":1,"executionStatus":"48","source":"49","data":"50","inputOverride":"51","metadata":"52","error":"53"},{"startTime":1768748939673,"executionIndex":0,"source":"54","hints":"55","executionTime":26109,"executionStatus":"48","error":"56"},{"parameters":"57","type":"31","typeVersion":3,"position":"58","id":"33","name":"7"},{"main":"59","ai_languageModel":"60"},{"main":"54"},{"subRun":"61"},"","auto","={{ $json.chatInput }}",{},"success",{"main":"62"},[null],"error",["63"],{"ai_languageModel":"60"},{"ai_languageModel":"60"},{"subRun":"61"},{"message":"22","timestamp":1768748965403,"name":"64","description":"16","context":"17"},["65"],[],{"level":"14","tags":"15","description":"16","timestamp":1768748965406,"context":"17","functionality":"18","name":"19","node":"20","messages":"21","message":"22","stack":"23"},{"aiAgentStarterCallout":"41","promptType":"42","text":"43","hasOutputParser":false,"needsFallback":false,"options":"66"},[208,0],["67"],["68"],["69"],["70"],{"previousNode":"7","previousNodeRun":0},"NodeApiError",{"previousNode":"71","previousNodeOutput":0,"previousNodeRun":0},{},["72"],["73"],{"node":"74","runIndex":0},["75"],"When chat message received",{"json":"76","pairedItem":"77"},{"json":"78"},"OpenAI Chat Model",{"json":"76"},{"sessionId":"79","action":"80","chatInput":"81"},{"item":0},{"messages":"82","estimatedTokens":8,"options":"83"},"a3017bb033ba45d1b22fd188c73ae757","sendMessage","hello my name is fernan",["84"],{"openai_api_key":"85","model":"86","timeout":60000,"max_retries":2,"configuration":"87","model_kwargs":"88","use_responses_api":true},"Human: hello my name is fernan",{"lc":1,"type":"89","id":"90"},"gpt-4.1-mini",{"baseURL":"91","fetchOptions":"92"},{},"secret",["93"],"https://api.openai.com/v1",{},"OPENAI_API_KEY"]
58	{"id":"rqlUyMiEmIGvzbdF","name":"My workflow","active":false,"nodes":[{"parameters":{"public":false,"availableInChat":false,"options":{}},"type":"@n8n/n8n-nodes-langchain.chatTrigger","typeVersion":1.4,"position":[0,0],"id":"dcd3ab5e-4e70-4519-842f-b57ceec7ac05","name":"When chat message received","webhookId":"e9052a3f-90dd-48b5-92c7-804a3555974e"},{"parameters":{"aiAgentStarterCallout":"","promptType":"auto","text":"={{ $json.chatInput }}","hasOutputParser":false,"needsFallback":false,"options":{}},"type":"@n8n/n8n-nodes-langchain.agent","typeVersion":3,"position":[208,0],"id":"d9f8e033-6e03-4357-9be0-bd83843c5f4b","name":"AI Agent"},{"parameters":{"notice":"","modelName":"models/gemini-2.5-flash","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatGoogleGemini","typeVersion":1,"position":[80,208],"id":"1f1d0ac3-0b39-4662-9aa1-36f58621e0a4","name":"Google Gemini Chat Model","credentials":{"googlePalmApi":{"id":"XGvBpUk4jkPH5F8n","name":"Google Gemini(PaLM) Api account"}}}],"connections":{"When chat message received":{"main":[[{"node":"AI Agent","type":"main","index":0}]]},"Google Gemini Chat Model":{"ai_languageModel":[[{"node":"AI Agent","type":"ai_languageModel","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{},{"runData":"4","pinData":"5","lastNodeExecuted":"6"},{"contextData":"7","nodeExecutionStack":"8","metadata":"9","waitingExecution":"10","waitingExecutionSource":"11","runtimeData":"12"},{"When chat message received":"13","Google Gemini Chat Model":"14","AI Agent":"15"},{},"AI Agent",{},[],{"Google Gemini Chat Model":"16"},{},{},{"version":1,"establishedAt":1768749315651,"source":"17"},["18"],["19"],["20"],["21"],"manual",{"startTime":1768749312682,"executionTime":0,"executionIndex":0,"executionStatus":"22","data":"23","source":"24"},{"startTime":1768749316979,"executionTime":3034,"executionIndex":1,"executionStatus":"22","source":"25","data":"26","inputOverride":"27","metadata":"28"},{"startTime":1768749315652,"executionIndex":0,"source":"29","hints":"30","executionTime":4365,"executionStatus":"22","data":"31"},{"subRun":"32"},"success",{"main":"33"},[null],["34"],{"ai_languageModel":"35"},{"ai_languageModel":"36"},{"subRun":"32"},["37"],[],{"main":"38"},["39"],["40"],{"previousNode":"6","previousNodeRun":0},["41"],["42"],{"previousNode":"43","previousNodeOutput":0,"previousNodeRun":0},["44"],{"node":"45","runIndex":0},["46"],["47"],["48"],"When chat message received",["49"],"Google Gemini Chat Model",{"json":"50"},{"json":"51"},{"json":"52"},{"json":"53","pairedItem":"54"},{"sessionId":"55","action":"56","chatInput":"57"},{"response":"58","tokenUsage":"59"},{"messages":"60","estimatedTokens":8,"options":"61"},{"output":"62"},{"item":0},"a3017bb033ba45d1b22fd188c73ae757","sendMessage","hello my name is fernan",{"generations":"63"},{"completionTokens":20,"promptTokens":7,"totalTokens":27},["64"],{"google_api_key":"65","base_url":"66","model":"67"},"Hello Fernan! It's nice to meet you.\\n\\nHow can I help you today?",["68"],"Human: hello my name is fernan",{"lc":1,"type":"69","id":"70"},"https://generativelanguage.googleapis.com","gemini-2.5-flash",["71"],"secret",["72"],{"text":"62","generationInfo":"73"},"GOOGLE_API_KEY",{"finishReason":"74","index":0},"STOP"]
62	{"id":"rqlUyMiEmIGvzbdF","name":"My workflow","active":false,"nodes":[{"parameters":{"public":false,"availableInChat":false,"options":{}},"type":"@n8n/n8n-nodes-langchain.chatTrigger","typeVersion":1.4,"position":[0,0],"id":"dcd3ab5e-4e70-4519-842f-b57ceec7ac05","name":"When chat message received","webhookId":"e9052a3f-90dd-48b5-92c7-804a3555974e"},{"parameters":{"aiAgentStarterCallout":"","promptType":"auto","text":"={{ $json.chatInput }}","hasOutputParser":false,"needsFallback":false,"options":{}},"type":"@n8n/n8n-nodes-langchain.agent","typeVersion":3,"position":[208,0],"id":"d9f8e033-6e03-4357-9be0-bd83843c5f4b","name":"AI Agent"},{"parameters":{"notice":"","modelName":"models/gemini-2.5-flash","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatGoogleGemini","typeVersion":1,"position":[80,208],"id":"1f1d0ac3-0b39-4662-9aa1-36f58621e0a4","name":"Google Gemini Chat Model","credentials":{"googlePalmApi":{"id":"XGvBpUk4jkPH5F8n","name":"Google Gemini(PaLM) Api account"}}},{"parameters":{"notice":"","sessionIdType":"fromInput","sessionKey":"={{ $json.sessionId }}","contextWindowLength":5},"type":"@n8n/n8n-nodes-langchain.memoryBufferWindow","typeVersion":1.3,"position":[224,208],"id":"66b9766c-c662-4eec-b55f-f9ad4a94bdef","name":"Simple Memory"}],"connections":{"When chat message received":{"main":[[{"node":"AI Agent","type":"main","index":0}]]},"Google Gemini Chat Model":{"ai_languageModel":[[{"node":"AI Agent","type":"ai_languageModel","index":0}]]},"Simple Memory":{"ai_memory":[[{"node":"AI Agent","type":"ai_memory","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{},{"runData":"4","pinData":"5","lastNodeExecuted":"6"},{"contextData":"7","nodeExecutionStack":"8","metadata":"9","waitingExecution":"10","waitingExecutionSource":"11","runtimeData":"12"},{"When chat message received":"13","Simple Memory":"14","Google Gemini Chat Model":"15","AI Agent":"16"},{},"AI Agent",{},[],{"Simple Memory":"17","Google Gemini Chat Model":"18"},{},{},{"version":1,"establishedAt":1768749689623,"source":"19"},["20"],["21","22"],["23"],["24"],["25","26"],["27"],"manual",{"startTime":1768749686245,"executionTime":0,"executionIndex":0,"executionStatus":"28","data":"29","source":"30"},{"startTime":1768749690010,"executionTime":1,"executionIndex":1,"executionStatus":"28","source":"31","data":"32","inputOverride":"33","metadata":"34"},{"startTime":1768749693836,"executionTime":2,"executionIndex":3,"executionStatus":"28","source":"35","data":"36","inputOverride":"37","metadata":"38"},{"startTime":1768749690015,"executionTime":3819,"executionIndex":2,"executionStatus":"28","source":"39","data":"40","inputOverride":"41","metadata":"42"},{"startTime":1768749689624,"executionIndex":0,"source":"43","hints":"44","executionTime":4215,"executionStatus":"28","data":"45"},{"subRun":"46"},{"subRun":"47"},{"subRun":"48"},"success",{"main":"49"},[null],["50"],{"ai_memory":"51"},{"ai_memory":"52"},{"subRun":"46"},["53"],{"ai_memory":"54"},{"ai_memory":"55"},{"subRun":"47"},["56"],{"ai_languageModel":"57"},{"ai_languageModel":"58"},{"subRun":"48"},["59"],[],{"main":"60"},["61"],["62"],["63"],["64"],{"previousNode":"6","previousNodeRun":0},["65"],["66"],{"previousNode":"6","previousNodeRun":0},["67"],["68"],{"previousNode":"6","previousNodeRun":0},["69"],["70"],{"previousNode":"71","previousNodeOutput":0,"previousNodeRun":0},["72"],{"node":"73","runIndex":0},{"node":"73","runIndex":1},{"node":"74","runIndex":0},["75"],["76"],["77"],["78"],["79"],["80"],["81"],"When chat message received",["82"],"Simple Memory","Google Gemini Chat Model",{"json":"83"},{"json":"84"},{"json":"85"},{"json":"86"},{"json":"87"},{"json":"88"},{"json":"89"},{"json":"90","pairedItem":"91"},{"sessionId":"92","action":"93","chatInput":"94"},{"action":"95","chatHistory":"96"},{"action":"95","values":"97"},{"action":"98","chatHistory":"99"},{"action":"98","input":"100","output":"101"},{"response":"102","tokenUsage":"103"},{"messages":"104","estimatedTokens":8,"options":"105"},{"output":"106"},{"item":0},"a3017bb033ba45d1b22fd188c73ae757","sendMessage","hello my name is fernan","loadMemoryVariables",[],{},"saveContext",["107","108"],{"input":"94"},{"output":"106"},{"generations":"109"},{"completionTokens":16,"promptTokens":7,"totalTokens":23},["110"],{"google_api_key":"111","base_url":"112","model":"113"},"Hi Fernan, nice to meet you! How can I help you today?",{"lc":1,"type":"114","id":"115","kwargs":"116"},{"lc":1,"type":"114","id":"117","kwargs":"118"},["119"],"Human: hello my name is fernan",{"lc":1,"type":"120","id":"121"},"https://generativelanguage.googleapis.com","gemini-2.5-flash","constructor",["122","123","124"],{"content":"94","additional_kwargs":"125","response_metadata":"126"},["122","123","127"],{"content":"106","tool_calls":"128","invalid_tool_calls":"129","additional_kwargs":"130","response_metadata":"131"},["132"],"secret",["133"],"langchain_core","messages","HumanMessage",{},{},"AIMessage",[],[],{},{},{"text":"106","generationInfo":"134"},"GOOGLE_API_KEY",{"finishReason":"135","index":0},"STOP"]
59	{"id":"rqlUyMiEmIGvzbdF","name":"My workflow","active":false,"nodes":[{"parameters":{"public":false,"availableInChat":false,"options":{}},"type":"@n8n/n8n-nodes-langchain.chatTrigger","typeVersion":1.4,"position":[0,0],"id":"dcd3ab5e-4e70-4519-842f-b57ceec7ac05","name":"When chat message received","webhookId":"e9052a3f-90dd-48b5-92c7-804a3555974e"},{"parameters":{"aiAgentStarterCallout":"","promptType":"auto","text":"={{ $json.chatInput }}","hasOutputParser":false,"needsFallback":false,"options":{}},"type":"@n8n/n8n-nodes-langchain.agent","typeVersion":3,"position":[208,0],"id":"d9f8e033-6e03-4357-9be0-bd83843c5f4b","name":"AI Agent"},{"parameters":{"notice":"","modelName":"models/gemini-2.5-flash","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatGoogleGemini","typeVersion":1,"position":[80,208],"id":"1f1d0ac3-0b39-4662-9aa1-36f58621e0a4","name":"Google Gemini Chat Model","credentials":{"googlePalmApi":{"id":"XGvBpUk4jkPH5F8n","name":"Google Gemini(PaLM) Api account"}}}],"connections":{"When chat message received":{"main":[[{"node":"AI Agent","type":"main","index":0}]]},"Google Gemini Chat Model":{"ai_languageModel":[[{"node":"AI Agent","type":"ai_languageModel","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{},{"runData":"4","pinData":"5","lastNodeExecuted":"6"},{"contextData":"7","nodeExecutionStack":"8","metadata":"9","waitingExecution":"10","waitingExecutionSource":"11","runtimeData":"12"},{"When chat message received":"13","Google Gemini Chat Model":"14","AI Agent":"15"},{},"AI Agent",{},[],{"Google Gemini Chat Model":"16"},{},{},{"version":1,"establishedAt":1768749519490,"source":"17"},["18"],["19"],["20"],["21"],"manual",{"startTime":1768749517198,"executionTime":0,"executionIndex":0,"executionStatus":"22","data":"23","source":"24"},{"startTime":1768749519821,"executionTime":2605,"executionIndex":1,"executionStatus":"22","source":"25","data":"26","inputOverride":"27","metadata":"28"},{"startTime":1768749519491,"executionIndex":0,"source":"29","hints":"30","executionTime":2937,"executionStatus":"22","data":"31"},{"subRun":"32"},"success",{"main":"33"},[null],["34"],{"ai_languageModel":"35"},{"ai_languageModel":"36"},{"subRun":"32"},["37"],[],{"main":"38"},["39"],["40"],{"previousNode":"6","previousNodeRun":0},["41"],["42"],{"previousNode":"43","previousNodeOutput":0,"previousNodeRun":0},["44"],{"node":"45","runIndex":0},["46"],["47"],["48"],"When chat message received",["49"],"Google Gemini Chat Model",{"json":"50"},{"json":"51"},{"json":"52"},{"json":"53","pairedItem":"54"},{"sessionId":"55","action":"56","chatInput":"57"},{"response":"58","tokenUsage":"59"},{"messages":"60","estimatedTokens":7,"options":"61"},{"output":"62"},{"item":0},"a3017bb033ba45d1b22fd188c73ae757","sendMessage","what is my name?",{"generations":"63"},{"completionTokens":60,"promptTokens":6,"totalTokens":66},["64"],{"google_api_key":"65","base_url":"66","model":"67"},"As an AI, I don't have access to personal information about you, including your name. Our conversation is anonymous.\\n\\nYou haven't told me your name in this conversation. If you'd like me to refer to you by a specific name, please feel free to tell me!",["68"],"Human: what is my name?",{"lc":1,"type":"69","id":"70"},"https://generativelanguage.googleapis.com","gemini-2.5-flash",["71"],"secret",["72"],{"text":"62","generationInfo":"73"},"GOOGLE_API_KEY",{"finishReason":"74","index":0},"STOP"]
60	{"id":"rqlUyMiEmIGvzbdF","name":"My workflow","active":false,"nodes":[{"parameters":{"public":false,"availableInChat":false,"options":{}},"type":"@n8n/n8n-nodes-langchain.chatTrigger","typeVersion":1.4,"position":[0,0],"id":"dcd3ab5e-4e70-4519-842f-b57ceec7ac05","name":"When chat message received","webhookId":"e9052a3f-90dd-48b5-92c7-804a3555974e"},{"parameters":{"aiAgentStarterCallout":"","promptType":"auto","text":"={{ $json.chatInput }}","hasOutputParser":false,"needsFallback":false,"options":{}},"type":"@n8n/n8n-nodes-langchain.agent","typeVersion":3,"position":[208,0],"id":"d9f8e033-6e03-4357-9be0-bd83843c5f4b","name":"AI Agent"},{"parameters":{"notice":"","modelName":"models/gemini-2.5-flash","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatGoogleGemini","typeVersion":1,"position":[80,208],"id":"1f1d0ac3-0b39-4662-9aa1-36f58621e0a4","name":"Google Gemini Chat Model","credentials":{"googlePalmApi":{"id":"XGvBpUk4jkPH5F8n","name":"Google Gemini(PaLM) Api account"}}}],"connections":{"When chat message received":{"main":[[{"node":"AI Agent","type":"main","index":0}]]},"Google Gemini Chat Model":{"ai_languageModel":[[{"node":"AI Agent","type":"ai_languageModel","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{},{"runData":"4","pinData":"5","lastNodeExecuted":"6"},{"contextData":"7","nodeExecutionStack":"8","metadata":"9","waitingExecution":"10","waitingExecutionSource":"11","runtimeData":"12"},{"When chat message received":"13","Google Gemini Chat Model":"14","AI Agent":"15"},{},"AI Agent",{},[],{"Google Gemini Chat Model":"16"},{},{},{"version":1,"establishedAt":1768749549313,"source":"17"},["18"],["19"],["20"],["21"],"manual",{"startTime":1768749547190,"executionTime":0,"executionIndex":0,"executionStatus":"22","data":"23","source":"24"},{"startTime":1768749549645,"executionTime":1247,"executionIndex":1,"executionStatus":"22","source":"25","data":"26","inputOverride":"27","metadata":"28"},{"startTime":1768749549314,"executionIndex":0,"source":"29","hints":"30","executionTime":1580,"executionStatus":"22","data":"31"},{"subRun":"32"},"success",{"main":"33"},[null],["34"],{"ai_languageModel":"35"},{"ai_languageModel":"36"},{"subRun":"32"},["37"],[],{"main":"38"},["39"],["40"],{"previousNode":"6","previousNodeRun":0},["41"],["42"],{"previousNode":"43","previousNodeOutput":0,"previousNodeRun":0},["44"],{"node":"45","runIndex":0},["46"],["47"],["48"],"When chat message received",["49"],"Google Gemini Chat Model",{"json":"50"},{"json":"51"},{"json":"52"},{"json":"53","pairedItem":"54"},{"sessionId":"55","action":"56","chatInput":"57"},{"response":"58","tokenUsage":"59"},{"messages":"60","estimatedTokens":7,"options":"61"},{"output":"62"},{"item":0},"a3017bb033ba45d1b22fd188c73ae757","sendMessage","my name is fernan",{"generations":"63"},{"completionTokens":13,"promptTokens":6,"totalTokens":19},["64"],{"google_api_key":"65","base_url":"66","model":"67"},"Hello, Fernan! It's nice to meet you.",["68"],"Human: my name is fernan",{"lc":1,"type":"69","id":"70"},"https://generativelanguage.googleapis.com","gemini-2.5-flash",["71"],"secret",["72"],{"text":"62","generationInfo":"73"},"GOOGLE_API_KEY",{"finishReason":"74","index":0},"STOP"]
61	{"id":"rqlUyMiEmIGvzbdF","name":"My workflow","active":false,"nodes":[{"parameters":{"public":false,"availableInChat":false,"options":{}},"type":"@n8n/n8n-nodes-langchain.chatTrigger","typeVersion":1.4,"position":[0,0],"id":"dcd3ab5e-4e70-4519-842f-b57ceec7ac05","name":"When chat message received","webhookId":"e9052a3f-90dd-48b5-92c7-804a3555974e"},{"parameters":{"aiAgentStarterCallout":"","promptType":"auto","text":"={{ $json.chatInput }}","hasOutputParser":false,"needsFallback":false,"options":{}},"type":"@n8n/n8n-nodes-langchain.agent","typeVersion":3,"position":[208,0],"id":"d9f8e033-6e03-4357-9be0-bd83843c5f4b","name":"AI Agent"},{"parameters":{"notice":"","modelName":"models/gemini-2.5-flash","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatGoogleGemini","typeVersion":1,"position":[80,208],"id":"1f1d0ac3-0b39-4662-9aa1-36f58621e0a4","name":"Google Gemini Chat Model","credentials":{"googlePalmApi":{"id":"XGvBpUk4jkPH5F8n","name":"Google Gemini(PaLM) Api account"}}}],"connections":{"When chat message received":{"main":[[{"node":"AI Agent","type":"main","index":0}]]},"Google Gemini Chat Model":{"ai_languageModel":[[{"node":"AI Agent","type":"ai_languageModel","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{},{"runData":"4","pinData":"5","lastNodeExecuted":"6"},{"contextData":"7","nodeExecutionStack":"8","metadata":"9","waitingExecution":"10","waitingExecutionSource":"11","runtimeData":"12"},{"When chat message received":"13","Google Gemini Chat Model":"14","AI Agent":"15"},{},"AI Agent",{},[],{"Google Gemini Chat Model":"16"},{},{},{"version":1,"establishedAt":1768749569756,"source":"17"},["18"],["19"],["20"],["21"],"manual",{"startTime":1768749567157,"executionTime":0,"executionIndex":0,"executionStatus":"22","data":"23","source":"24"},{"startTime":1768749570089,"executionTime":2398,"executionIndex":1,"executionStatus":"22","source":"25","data":"26","inputOverride":"27","metadata":"28"},{"startTime":1768749569757,"executionIndex":0,"source":"29","hints":"30","executionTime":2732,"executionStatus":"22","data":"31"},{"subRun":"32"},"success",{"main":"33"},[null],["34"],{"ai_languageModel":"35"},{"ai_languageModel":"36"},{"subRun":"32"},["37"],[],{"main":"38"},["39"],["40"],{"previousNode":"6","previousNodeRun":0},["41"],["42"],{"previousNode":"43","previousNodeOutput":0,"previousNodeRun":0},["44"],{"node":"45","runIndex":0},["46"],["47"],["48"],"When chat message received",["49"],"Google Gemini Chat Model",{"json":"50"},{"json":"51"},{"json":"52"},{"json":"53","pairedItem":"54"},{"sessionId":"55","action":"56","chatInput":"57"},{"response":"58","tokenUsage":"59"},{"messages":"60","estimatedTokens":7,"options":"61"},{"output":"62"},{"item":0},"a3017bb033ba45d1b22fd188c73ae757","sendMessage","what is my name?",{"generations":"63"},{"completionTokens":53,"promptTokens":6,"totalTokens":59},["64"],{"google_api_key":"65","base_url":"66","model":"67"},"As an AI, I don't have access to any personal information about you, including your name. I don't know who you are.\\n\\nYou're welcome to tell me your name if you'd like me to refer to you by it!",["68"],"Human: what is my name?",{"lc":1,"type":"69","id":"70"},"https://generativelanguage.googleapis.com","gemini-2.5-flash",["71"],"secret",["72"],{"text":"62","generationInfo":"73"},"GOOGLE_API_KEY",{"finishReason":"74","index":0},"STOP"]
63	{"id":"rqlUyMiEmIGvzbdF","name":"My workflow","active":false,"nodes":[{"parameters":{"public":false,"availableInChat":false,"options":{}},"type":"@n8n/n8n-nodes-langchain.chatTrigger","typeVersion":1.4,"position":[0,0],"id":"dcd3ab5e-4e70-4519-842f-b57ceec7ac05","name":"When chat message received","webhookId":"e9052a3f-90dd-48b5-92c7-804a3555974e"},{"parameters":{"aiAgentStarterCallout":"","promptType":"auto","text":"={{ $json.chatInput }}","hasOutputParser":false,"needsFallback":false,"options":{}},"type":"@n8n/n8n-nodes-langchain.agent","typeVersion":3,"position":[208,0],"id":"d9f8e033-6e03-4357-9be0-bd83843c5f4b","name":"AI Agent"},{"parameters":{"notice":"","modelName":"models/gemini-2.5-flash","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatGoogleGemini","typeVersion":1,"position":[80,208],"id":"1f1d0ac3-0b39-4662-9aa1-36f58621e0a4","name":"Google Gemini Chat Model","credentials":{"googlePalmApi":{"id":"XGvBpUk4jkPH5F8n","name":"Google Gemini(PaLM) Api account"}}},{"parameters":{"notice":"","sessionIdType":"fromInput","sessionKey":"={{ $json.sessionId }}","contextWindowLength":5},"type":"@n8n/n8n-nodes-langchain.memoryBufferWindow","typeVersion":1.3,"position":[224,208],"id":"66b9766c-c662-4eec-b55f-f9ad4a94bdef","name":"Simple Memory"}],"connections":{"When chat message received":{"main":[[{"node":"AI Agent","type":"main","index":0}]]},"Google Gemini Chat Model":{"ai_languageModel":[[{"node":"AI Agent","type":"ai_languageModel","index":0}]]},"Simple Memory":{"ai_memory":[[{"node":"AI Agent","type":"ai_memory","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{},{"runData":"4","pinData":"5","lastNodeExecuted":"6"},{"contextData":"7","nodeExecutionStack":"8","metadata":"9","waitingExecution":"10","waitingExecutionSource":"11","runtimeData":"12"},{"When chat message received":"13","Simple Memory":"14","Google Gemini Chat Model":"15","AI Agent":"16"},{},"AI Agent",{},[],{"Simple Memory":"17","Google Gemini Chat Model":"18"},{},{},{"version":1,"establishedAt":1768749709230,"source":"19"},["20"],["21","22"],["23"],["24"],["25","26"],["27"],"manual",{"startTime":1768749706725,"executionTime":0,"executionIndex":0,"executionStatus":"28","data":"29","source":"30"},{"startTime":1768749709562,"executionTime":0,"executionIndex":1,"executionStatus":"28","source":"31","data":"32","inputOverride":"33","metadata":"34"},{"startTime":1768749710254,"executionTime":1,"executionIndex":3,"executionStatus":"28","source":"35","data":"36","inputOverride":"37","metadata":"38"},{"startTime":1768749709564,"executionTime":689,"executionIndex":2,"executionStatus":"28","source":"39","data":"40","inputOverride":"41","metadata":"42"},{"startTime":1768749709231,"executionIndex":0,"source":"43","hints":"44","executionTime":1024,"executionStatus":"28","data":"45"},{"subRun":"46"},{"subRun":"47"},{"subRun":"48"},"success",{"main":"49"},[null],["50"],{"ai_memory":"51"},{"ai_memory":"52"},{"subRun":"46"},["53"],{"ai_memory":"54"},{"ai_memory":"55"},{"subRun":"47"},["56"],{"ai_languageModel":"57"},{"ai_languageModel":"58"},{"subRun":"48"},["59"],[],{"main":"60"},["61"],["62"],["63"],["64"],{"previousNode":"6","previousNodeRun":0},["65"],["66"],{"previousNode":"6","previousNodeRun":0},["67"],["68"],{"previousNode":"6","previousNodeRun":0},["69"],["70"],{"previousNode":"71","previousNodeOutput":0,"previousNodeRun":0},["72"],{"node":"73","runIndex":0},{"node":"73","runIndex":1},{"node":"74","runIndex":0},["75"],["76"],["77"],["78"],["79"],["80"],["81"],"When chat message received",["82"],"Simple Memory","Google Gemini Chat Model",{"json":"83"},{"json":"84"},{"json":"85"},{"json":"86"},{"json":"87"},{"json":"88"},{"json":"89"},{"json":"90","pairedItem":"91"},{"sessionId":"92","action":"93","chatInput":"94"},{"action":"95","chatHistory":"96"},{"action":"95","values":"97"},{"action":"98","chatHistory":"99"},{"action":"98","input":"100","output":"101"},{"response":"102","tokenUsage":"103"},{"messages":"104","estimatedTokens":34,"options":"105"},{"output":"106"},{"item":0},"a3017bb033ba45d1b22fd188c73ae757","sendMessage","what is my name?","loadMemoryVariables",["107","108"],{},"saveContext",["109","110","111","112"],{"input":"94"},{"output":"106"},{"generations":"113"},{"completionTokens":6,"promptTokens":30,"totalTokens":36},["114"],{"google_api_key":"115","base_url":"116","model":"117"},"Your name is Fernan.",{"lc":1,"type":"118","id":"119","kwargs":"120"},{"lc":1,"type":"118","id":"121","kwargs":"122"},{"lc":1,"type":"118","id":"123","kwargs":"124"},{"lc":1,"type":"118","id":"125","kwargs":"126"},{"lc":1,"type":"118","id":"127","kwargs":"128"},{"lc":1,"type":"118","id":"129","kwargs":"130"},["131"],"Human: hello my name is fernan\\nAI: Hi Fernan, nice to meet you! How can I help you today?\\nHuman: what is my name?",{"lc":1,"type":"132","id":"133"},"https://generativelanguage.googleapis.com","gemini-2.5-flash","constructor",["134","135","136"],{"content":"137","additional_kwargs":"138","response_metadata":"139"},["134","135","140"],{"content":"141","tool_calls":"142","invalid_tool_calls":"143","additional_kwargs":"144","response_metadata":"145"},["134","135","136"],{"content":"137","additional_kwargs":"138","response_metadata":"139"},["134","135","140"],{"content":"141","tool_calls":"142","invalid_tool_calls":"143","additional_kwargs":"144","response_metadata":"145"},["134","135","136"],{"content":"94","additional_kwargs":"146","response_metadata":"147"},["134","135","140"],{"content":"106","tool_calls":"148","invalid_tool_calls":"149","additional_kwargs":"150","response_metadata":"151"},["152"],"secret",["153"],"langchain_core","messages","HumanMessage","hello my name is fernan",{},{},"AIMessage","Hi Fernan, nice to meet you! How can I help you today?",[],[],{},{},{},{},[],[],{},{},{"text":"106","generationInfo":"154"},"GOOGLE_API_KEY",{"finishReason":"155","index":0},"STOP"]
64	{"id":"rqlUyMiEmIGvzbdF","name":"My workflow","active":false,"nodes":[{"parameters":{"public":false,"availableInChat":false,"options":{}},"type":"@n8n/n8n-nodes-langchain.chatTrigger","typeVersion":1.4,"position":[0,0],"id":"dcd3ab5e-4e70-4519-842f-b57ceec7ac05","name":"When chat message received","webhookId":"e9052a3f-90dd-48b5-92c7-804a3555974e"},{"parameters":{"aiAgentStarterCallout":"","promptType":"auto","text":"={{ $json.chatInput }}","hasOutputParser":false,"needsFallback":false,"options":{}},"type":"@n8n/n8n-nodes-langchain.agent","typeVersion":3,"position":[208,0],"id":"d9f8e033-6e03-4357-9be0-bd83843c5f4b","name":"AI Agent"},{"parameters":{"notice":"","modelName":"models/gemini-2.5-flash","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatGoogleGemini","typeVersion":1,"position":[80,208],"id":"1f1d0ac3-0b39-4662-9aa1-36f58621e0a4","name":"Google Gemini Chat Model","credentials":{"googlePalmApi":{"id":"XGvBpUk4jkPH5F8n","name":"Google Gemini(PaLM) Api account"}}},{"parameters":{"notice":"","sessionIdType":"fromInput","sessionKey":"={{ $json.sessionId }}","contextWindowLength":5},"type":"@n8n/n8n-nodes-langchain.memoryBufferWindow","typeVersion":1.3,"position":[224,208],"id":"66b9766c-c662-4eec-b55f-f9ad4a94bdef","name":"Simple Memory"},{"parameters":{"preBuiltAgentsCalloutGmail":"","descriptionType":"auto","authentication":"oAuth2","resource":"message","operation":"send","sendTo":"","subject":"","emailType":"html","message":"","options":{}},"type":"n8n-nodes-base.gmailTool","typeVersion":2.1,"position":[368,208],"id":"47fa6457-3c74-44f6-ae04-9f13a0440b28","name":"Send a message in Gmail","webhookId":"ba633fbc-8caf-4c64-a010-f6176afd692e","credentials":{"gmailOAuth2":{"id":"V6F4PoZ5qguyZtAe","name":"Gmail account"}}}],"connections":{"When chat message received":{"main":[[{"node":"AI Agent","type":"main","index":0}]]},"Google Gemini Chat Model":{"ai_languageModel":[[{"node":"AI Agent","type":"ai_languageModel","index":0}]]},"Simple Memory":{"ai_memory":[[{"node":"AI Agent","type":"ai_memory","index":0}]]},"Send a message in Gmail":{"ai_tool":[[{"node":"AI Agent","type":"ai_tool","index":0}]]}},"settings":{"executionOrder":"v1"},"pinData":{}}	[{"startData":"1","resultData":"2","executionData":"3"},{},{"runData":"4","pinData":"5","lastNodeExecuted":"6"},{"contextData":"7","nodeExecutionStack":"8","metadata":"9","waitingExecution":"10","waitingExecutionSource":"11","runtimeData":"12"},{"When chat message received":"13","Simple Memory":"14","Google Gemini Chat Model":"15","AI Agent":"16"},{},"AI Agent",{},[],{"Simple Memory":"17","Google Gemini Chat Model":"18"},{},{},{"version":1,"establishedAt":1768750033089,"source":"19"},["20"],["21","22"],["23"],["24"],["25","26"],["27"],"manual",{"startTime":1768750028618,"executionTime":0,"executionIndex":0,"executionStatus":"28","data":"29","source":"30"},{"startTime":1768750033878,"executionTime":199,"executionIndex":1,"executionStatus":"28","source":"31","data":"32","inputOverride":"33","metadata":"34"},{"startTime":1768750038201,"executionTime":2,"executionIndex":3,"executionStatus":"28","source":"35","data":"36","inputOverride":"37","metadata":"38"},{"startTime":1768750034777,"executionTime":3423,"executionIndex":2,"executionStatus":"28","source":"39","data":"40","inputOverride":"41","metadata":"42"},{"startTime":1768750033090,"executionIndex":0,"source":"43","hints":"44","executionTime":5113,"executionStatus":"28","data":"45"},{"subRun":"46"},{"subRun":"47"},{"subRun":"48"},"success",{"main":"49"},[null],["50"],{"ai_memory":"51"},{"ai_memory":"52"},{"subRun":"46"},["53"],{"ai_memory":"54"},{"ai_memory":"55"},{"subRun":"47"},["56"],{"ai_languageModel":"57"},{"ai_languageModel":"58"},{"subRun":"48"},["59"],[],{"main":"60"},["61"],["62"],["63"],["64"],{"previousNode":"6","previousNodeRun":0},["65"],["66"],{"previousNode":"6","previousNodeRun":0},["67"],["68"],{"previousNode":"6","previousNodeRun":0},["69"],["70"],{"previousNode":"71","previousNodeOutput":0,"previousNodeRun":0},["72"],{"node":"73","runIndex":0},{"node":"73","runIndex":1},{"node":"74","runIndex":0},["75"],["76"],["77"],["78"],["79"],["80"],["81"],"When chat message received",["82"],"Simple Memory","Google Gemini Chat Model",{"json":"83"},{"json":"84"},{"json":"85"},{"json":"86"},{"json":"87"},{"json":"88"},{"json":"89"},{"json":"90","pairedItem":"91"},{"sessionId":"92","action":"93","chatInput":"94"},{"action":"95","chatHistory":"96"},{"action":"95","values":"97"},{"action":"98","chatHistory":"99"},{"action":"98","input":"100","output":"101"},{"response":"102","tokenUsage":"103"},{"messages":"104","estimatedTokens":66,"options":"105"},{"output":"106"},{"item":0},"a3017bb033ba45d1b22fd188c73ae757","sendMessage","you are a friendly email marketer. can you make an email mssage to send to the reciepient","loadMemoryVariables",["107","108","109","110"],{},"saveContext",["111","112","113","114","115","116"],{"input":"94"},{"output":"106"},{"generations":"117"},{"completionTokens":142,"promptTokens":92,"totalTokens":234},["118"],{"google_api_key":"119","base_url":"120","model":"121"},"Sure, I can help you draft an email message!\\n\\nTo make sure it's perfect, could you tell me:\\n\\n*   **Who is the email going to?** (Recipient's name or company)\\n*   **What's the main purpose of the email?** (e.g., announcing a new product, a special offer, a newsletter, a follow-up)\\n*   **Is there any specific information or call to action you'd like to include?**\\n\\nOnce I have these details, I can craft a friendly and effective email for you! And once we have the draft, I can help you send it through Gmail if you'd like.",{"lc":1,"type":"122","id":"123","kwargs":"124"},{"lc":1,"type":"122","id":"125","kwargs":"126"},{"lc":1,"type":"122","id":"127","kwargs":"128"},{"lc":1,"type":"122","id":"129","kwargs":"130"},{"lc":1,"type":"122","id":"131","kwargs":"132"},{"lc":1,"type":"122","id":"133","kwargs":"134"},{"lc":1,"type":"122","id":"135","kwargs":"136"},{"lc":1,"type":"122","id":"137","kwargs":"138"},{"lc":1,"type":"122","id":"139","kwargs":"140"},{"lc":1,"type":"122","id":"141","kwargs":"142"},["143"],"Human: hello my name is fernan\\nAI: Hi Fernan, nice to meet you! How can I help you today?\\nHuman: what is my name?\\nAI: Your name is Fernan.\\nHuman: you are a friendly email marketer. can you make an email mssage to send to the reciepient",{"lc":1,"type":"144","id":"145"},"https://generativelanguage.googleapis.com","gemini-2.5-flash","constructor",["146","147","148"],{"content":"149","additional_kwargs":"150","response_metadata":"151"},["146","147","152"],{"content":"153","tool_calls":"154","invalid_tool_calls":"155","additional_kwargs":"156","response_metadata":"157"},["146","147","148"],{"content":"158","additional_kwargs":"159","response_metadata":"160"},["146","147","152"],{"content":"161","tool_calls":"162","invalid_tool_calls":"163","additional_kwargs":"164","response_metadata":"165"},["146","147","148"],{"content":"149","additional_kwargs":"150","response_metadata":"151"},["146","147","152"],{"content":"153","tool_calls":"154","invalid_tool_calls":"155","additional_kwargs":"156","response_metadata":"157"},["146","147","148"],{"content":"158","additional_kwargs":"159","response_metadata":"160"},["146","147","152"],{"content":"161","tool_calls":"162","invalid_tool_calls":"163","additional_kwargs":"164","response_metadata":"165"},["146","147","148"],{"content":"94","additional_kwargs":"166","response_metadata":"167"},["146","147","152"],{"content":"106","tool_calls":"168","invalid_tool_calls":"169","additional_kwargs":"170","response_metadata":"171"},["172"],"secret",["173"],"langchain_core","messages","HumanMessage","hello my name is fernan",{},{},"AIMessage","Hi Fernan, nice to meet you! How can I help you today?",[],[],{},{},"what is my name?",{},{},"Your name is Fernan.",[],[],{},{},{},{},[],[],{},{},{"text":"106","generationInfo":"174"},"GOOGLE_API_KEY",{"finishReason":"175","index":0},"STOP"]
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
102	1759399811000	ChangeValueTypesForInsights1759399811000
103	1760019379982	CreateChatHubTables1760019379982
104	1760020000000	CreateChatHubAgentTable1760020000000
105	1760020838000	UniqueRoleNames1760020838000
106	1760116750277	CreateOAuthEntities1760116750277
107	1760314000000	CreateWorkflowDependencyTable1760314000000
108	1760965142113	DropUnusedChatHubColumns1760965142113
109	1761047826451	AddWorkflowVersionColumn1761047826451
110	1761655473000	ChangeDependencyInfoToJson1761655473000
111	1761830340990	AddToolsColumnToChatHubTables1761830340990
112	1762177736257	AddWorkflowDescriptionColumn1762177736257
113	1762763704614	BackfillMissingWorkflowHistoryRecords1762763704614
114	1762771264000	ChangeDefaultForIdInUserTable1762771264000
115	1762847206508	AddWorkflowHistoryAutoSaveFields1762847206508
116	1763572724000	ChangeOAuthStateColumnToUnboundedVarchar1763572724000
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_clients" ("id", "name", "redirectUris", "grantTypes", "clientSecret", "clientSecretExpiresAt", "tokenEndpointAuthMethod", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: oauth_access_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_access_tokens" ("token", "clientId", "userId") FROM stdin;
\.


--
-- Data for Name: oauth_authorization_codes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_authorization_codes" ("code", "clientId", "userId", "redirectUri", "codeChallenge", "codeChallengeMethod", "expiresAt", "state", "used", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: oauth_refresh_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_refresh_tokens" ("token", "clientId", "userId", "expiresAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: oauth_user_consents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_user_consents" ("id", "userId", "clientId", "grantedAt") FROM stdin;
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
provisioning:manage	provisioning:manage	\N
provisioning:*	provisioning:*	\N
dataTable:create	dataTable:create	\N
dataTable:read	dataTable:read	\N
dataTable:update	dataTable:update	\N
dataTable:delete	dataTable:delete	\N
dataTable:list	dataTable:list	\N
dataTable:readRow	dataTable:readRow	\N
dataTable:writeRow	dataTable:writeRow	\N
dataTable:listProject	dataTable:listProject	\N
dataTable:*	dataTable:*	\N
mcp:oauth	mcp:oauth	\N
chatHub:manage	chatHub:manage	\N
chatHub:message	chatHub:message	\N
chatHub:*	chatHub:*	\N
chatHubAgent:create	chatHubAgent:create	\N
chatHubAgent:read	chatHubAgent:read	\N
chatHubAgent:update	chatHubAgent:update	\N
chatHubAgent:delete	chatHubAgent:delete	\N
chatHubAgent:list	chatHubAgent:list	\N
chatHubAgent:*	chatHubAgent:*	\N
breakingChanges:list	breakingChanges:list	\N
breakingChanges:*	breakingChanges:*	\N
\.


--
-- Data for Name: role_scope; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role_scope" ("roleSlug", "scopeSlug") FROM stdin;
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
global:owner	role:manage
global:owner	mcp:manage
global:owner	mcpApiKey:create
global:owner	mcpApiKey:rotate
global:owner	provisioning:manage
global:owner	dataTable:create
global:owner	dataTable:read
global:owner	dataTable:update
global:owner	dataTable:delete
global:owner	dataTable:list
global:owner	dataTable:readRow
global:owner	dataTable:writeRow
global:owner	dataTable:listProject
global:owner	mcp:oauth
global:owner	chatHub:manage
global:owner	chatHub:message
global:owner	chatHubAgent:create
global:owner	chatHubAgent:read
global:owner	chatHubAgent:update
global:owner	chatHubAgent:delete
global:owner	chatHubAgent:list
global:owner	breakingChanges:list
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
global:admin	role:manage
global:admin	mcp:manage
global:admin	mcpApiKey:create
global:admin	mcpApiKey:rotate
global:admin	provisioning:manage
global:admin	dataTable:create
global:admin	dataTable:read
global:admin	dataTable:update
global:admin	dataTable:delete
global:admin	dataTable:list
global:admin	dataTable:readRow
global:admin	dataTable:writeRow
global:admin	dataTable:listProject
global:admin	mcp:oauth
global:admin	chatHub:manage
global:admin	chatHub:message
global:admin	chatHubAgent:create
global:admin	chatHubAgent:read
global:admin	chatHubAgent:update
global:admin	chatHubAgent:delete
global:admin	chatHubAgent:list
global:admin	breakingChanges:list
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
global:member	mcpApiKey:create
global:member	mcpApiKey:rotate
global:member	dataTable:list
global:member	mcp:oauth
global:member	chatHub:message
global:member	chatHubAgent:create
global:member	chatHubAgent:read
global:member	chatHubAgent:update
global:member	chatHubAgent:delete
global:member	chatHubAgent:list
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
project:admin	dataTable:create
project:admin	dataTable:read
project:admin	dataTable:update
project:admin	dataTable:delete
project:admin	dataTable:readRow
project:admin	dataTable:writeRow
project:admin	dataTable:listProject
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
project:personalOwner	dataTable:create
project:personalOwner	dataTable:read
project:personalOwner	dataTable:update
project:personalOwner	dataTable:delete
project:personalOwner	dataTable:readRow
project:personalOwner	dataTable:writeRow
project:personalOwner	dataTable:listProject
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
project:editor	dataTable:create
project:editor	dataTable:read
project:editor	dataTable:update
project:editor	dataTable:delete
project:editor	dataTable:readRow
project:editor	dataTable:writeRow
project:editor	dataTable:listProject
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
project:viewer	dataTable:read
project:viewer	dataTable:readRow
project:viewer	dataTable:listProject
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
license.cert	eyJsaWNlbnNlS2V5IjoiLS0tLS1CRUdJTiBMSUNFTlNFIEtFWS0tLS0tXG5XVjJZWXQvZmVsdnBDdTljYWgvdHdyWUV1dWJLZlZYKzBWWHcwT0E3WFdsS2lZRU5UUGR0RDB3Nk12QzFybUZEXG5UMDhmYi92b0w3VXFUNitFSjFFWWF1alQ0a2VOVXorQmRvWGZDMTd2M0ZaSkVVaUpqYkYvSXFvQ2p1MnJjUzZoXG5xdEUzL1N6TzV5NmpJaFRNKzVxV1ExS3V4TStEelVOeGZMWG1rUS9NSkNnZnpRVlNBZnVGYk9uWEdoWVhmeVFOXG5ZN0xVSFN4dmdmWW5RT2dEaXh1RnpJRm13TiszQjZwcUljbVJadkEzQnlZa3ErcTduT2ZnNE1qWXdEdzJRMDE1XG5yKzhEOFBGUHdtajg1d2JaRk91c0dhdU1IZkZQdXhCRDduUXBwaTZkYS9GU0kySGl4UXVxSXV3ZmtzbEZxd1BNXG5oSDVNOXdKQnBMM0R2eHRQRmp4b2JRPT18fFUyRnNkR1ZrWDE4bVpEbWt2NGswVExHVUZQZE0vM3hKaDJMS1RKXG5NNWI1dzRwaDJjUXFqalRJZVlRTmhZbk1kQUE2NWQ2Tkx2c3hDRzNrUTdVMHBrYmhQSWdad3ZOdEJTQWRHNWt1XG5rSitQam5mOFBQM0pVQWN2elRFU2ZieVlERThuMUF6V2phd0lrdldsekpBbVpWN05NWDhHNHNUNFV6emRWb0E2XG5xNkU2VWc0WjdVTDllaHNsVzVBdzk5L3BLblFTelpyb2t3em44Sk5xeGc3NjAwMlEyNHNKYzFwUHRzWEFJRE91XG5majRjZFpJV3J1VDJOOTVsanE0QU45TVpUdlZSTURZQVh5QlIvenIyM09uVTJiR0tUcGt5Nk9qYWk0bklLU1ZXXG50TFJtRjRoZGZoUUpVUVozL3VaSG1zRGtLV09teURBVEpXdVdSYWZHbVVUSjZSV1BoK2VkQkgrbVM1Tzc5ZEkyXG4wREllVzNFU2QxYWxPWi9oRGxNelgyZE9HK1Y1MXlicytLckk4UEVNZjBnaXdteDNYNTYwKzF5RkV0M1B4am5lXG5IV1ZkR2xzdUFwY3E1aHJ1bFBzUWtuNHFkTVpCcVZPc085RjVoRE90NWRYOFVES2huN1plT2VZYkFsQlcxT1B6XG40MHh3ZFk5bm93MGJIQkIrdXVLVDZHVkNvVU9EcTVwZEVRVFdHWXlYVCs1VWVJYzVkOS82c2J6c1lGdG5lczczXG54cEhKTmxmNHVIWUdaYStsK1lxWG0xTzBCQlR1c25qWDhrYnZJVi9jN1pyeVRMdGZtai92VXZlTW9ockVzeFNqXG5hU1pjMkJ2YThMUG9hYlNRSDZhdXpqZVkra1l2Z0hRczVEMlNvTVRxV2ViUXhXMk5sNTFSbEYzQmYrSVV4NXY3XG5ZQ1pwVTNaQm5mcm5Hd1JVTzE3emFrVFJmeTN2R0lYVTViWWlwM3dwdlBHaGlMdm5ITWFmOWFrOUJlQ0FOV1R2XG5uTDFyaXhlQ3grU2g0NjM1ZlZUNEhtWW5mcmtzbWk1SDl0amJCT3FPenNmNU5NeE1TNW5pcS94eGJQQk03b3g0XG42Z3lpUTJ2TFgxQ1pMdElUN0VWcHpzYWZZZ0NJOFFUNXZKN2M4TnNWZXZuOWtIRUd0SjhWbDFIL0xqd1pqb2dvXG5uelMrVmJCSDVJVWIzNCtwNHNNK29abjNwbkxVRit4aDZnYjFEc05mOXo1SVVKbXF1YWZKbDlKcjNZR0kvRkU4XG5NTzJWaWFHUzBMWDU5bU9IWFFQRkpHdWd2NEdIZ1EyYW1GTWF6UzZRRjRLTmlIVWZBMERjYnJjcHhxWHA0Y3dCXG5FRmRXZ1ZlUzFXK3hYVWs1d3Y2Y0RZWFdqRVJlWTB3bDN2dTRVU1JxN2p5akd5UFQwbjhrcm5nS1BoZ2J3S1l4XG5jRklJYk9GSE8wVWZSWnFibitiWE9nQUtrQzlnQ1drR3FOMmlJWW5TYmxUd1M3L3d0YW1Da1gxUDJCN2orb2RRXG5EalIzY0o3b0NOa1A0QUROajN6MUJBakxIdWxTMkxVTnh6U2VXM0tUUE9wZ05ycVJtTHhkYXo2Vk80d0oxZXZsXG4vd01Ra2xjc28zQlpVbGtmNXVFS2E2RmhQSWpraWloWWZsLzlFWjJGTVZRMEpsM0grbUNKOEI5ZTZnZ0FHeDdDXG5ZNHBIK2FYOGtNNDFiNlJxZnJpWlpZdFowZUZITmliN2QydVpDUGdlNkRWbXlBWEFtTEFqVTZ0bVMzUFpyR2FYXG5YMDNTeGFrT2RiMmJZL2dWVlpSVXRNQldTazZlZDlETWs1c1cxZ3h5MVhNWlJQRFBSK00ySjFlbzM2TXREVVpUXG5wWGxIeDhSSlRWR0lrNzZSbUhicGJxTEMvSFU4U1JNcTI0d2F4MVp3MEp2Sk0wK250dmtnN0NrYUVwelplZU1aXG4wOHp6b2dTUHVnd3JwaUQ0a1ZudTJLazlmSUdpL3lNdDAwZnBHRVZ2MnEyOEhNUER0UFdZTXZIeVIvbUp3emlpXG4vMlZ6anBDM3piWWMzQ1lFejJBUHlxK0JWR0xBY1ppMlRYeiszV09NMnlDU3kzQ0NiL1ZGL1NCL1lPbmdMTENFXG41RW1PbVBTQjBGWm1RRDdJU1lRdkdaaFlid3V2Vkw0VjI4NTc4bmJXRnFZbGtzSHNDWU50ZEFBYnZtK0FxS1p5XG5IOHpIYklUb2I1RjJJcG10ZG94QzJaUTZhRkRmbERVVm1aMHRhWkhvL3M3anhrc2dLUkhnMVZKaWxPRFJjWEV4XG45Q09aMHg1dmJWbzQ0c01aMCt6RDN6L0dOMTJFMmsvbXVBVEVKMXp4b1pjakZLM2dMNmZHSHo4RGdIaEVFcWhEXG5nRWIza3NxZVhpMndOUFErZ081NmJLRHFYampCUVRPRnJXdDlEdThIVG1jRmRyV3Y2ekxZakZUZTc3NGJ2Ykg1XG5wSFFQV3FVQzBSQkE3dmlSODE1WHZDVWdDVGJFelA0WnNSSWk5d29lNks0eVhpdThtZGhiK1NndUJ3QlBjS0dlXG5VSmpJMXQwcWxQczNSUDFLZ3BrbXczNEN3N0EvY2MzdkJUZWxlQnhwTlhWc1h0WithVHpWZ3lSWHp0eFlKbVpsXG56NnMvdHRmdHZ5TVVvbEFQYU95RHFBZGc3TFBZdmgwekpuNU1WbjZNRGR0TGxiV3AzMFBoUUZIcXpxMllVc01PXG5PeXNPMTFTaDhmbkkxNFdqdFlyVWtucytrenlRb2hZVTlaelNjbE91ZUNsOHJjLzAwamlTbEpjb29tcUxBT3lDXG5PU0U3RkY1QytPdGNjTktvejg5TlFCRHdWR2VwMVBUZXMrWDAyckpDWjZhNmtsSVUyT0h2dS84QzU5RlNPR1psXG5NaEh4bDNXS1NYK0E1TDIxZFl6TExwV1gwSGxJaWtaRHROd0NVWEd0N01MNlN0QkJOYWMwNnR0V2hxbXBITlBDXG5URjlvZ3VZeXhhckliSWhJUDZJTlJ0UGxiVlB0NHhPZnpoQVRJaVN5czZGOXp4V3RzSWRkeXpaRkhkTDI3NGhmXG5GMUUrZkVrNzdqam1TelFzd0hhNmxuQUthQ3BFdjMwN1pYL2JqRXVFWFVyaVFNZ0E9PXx8WlRoRThoV0Noa1VPXG44S3hRL0hJV0FtQXlBbHZURElaZFlwR3FHdG9uV04rdW5VSnBoY0xvTTkycmNzekZJQzNQZE9IelJEUEJxcjYwXG5xdDhPdkZUelZmMjJYYzdzbER5dFF4YXJlWEtLT1VVeFVWbUYxc2NzRGNTL1UrQldSdmxwNHRYZ3pJRFErdjAwXG44ekFyeVJSMkEzMk9CdE5rMFBGZnFwNFV3TjBmVW5uNzZIaWNFT0g2MVdXOEMvYVVsdDFwSVNPY2FzeVlPSSt5XG5EQ0xBT21QdWNUdnNRRFM2elZCdm9hVE1EV1lKTFhmWGRzRVp2NTdtbmdKaXp0enFJUUIvdTd5Q2NUZFpkQmhmXG5ucXE5a3VLbWp4OUI2blpmV056V2xJMDgrSGZYVDk2MHNqZlZibHpmVSs2L1M3QXZ5bnNmcW5QNnZhd040OHpZXG5vMUdWY3BUaXRBPT1cbi0tLS0tRU5EIExJQ0VOU0UgS0VZLS0tLS0iLCJ4NTA5IjoiLS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tXG5NSUlFRERDQ0FmUUNDUUNxZzJvRFQ4MHh3akFOQmdrcWhraUc5dzBCQVFVRkFEQklNUXN3Q1FZRFZRUUdFd0pFXG5SVEVQTUEwR0ExVUVDQXdHUW1WeWJHbHVNUTh3RFFZRFZRUUhEQVpDWlhKc2FXNHhGekFWQmdOVkJBTU1EbXhwXG5ZMlZ1YzJVdWJqaHVMbWx2TUI0WERUSXlNRFl5TkRBME1UQTBNRm9YRFRJek1EWXlOREEwTVRBME1Gb3dTREVMXG5NQWtHQTFVRUJoTUNSRVV4RHpBTkJnTlZCQWdNQmtKbGNteHBiakVQTUEwR0ExVUVCd3dHUW1WeWJHbHVNUmN3XG5GUVlEVlFRRERBNXNhV05sYm5ObExtNDRiaTVwYnpDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDXG5BUW9DZ2dFQkFNQk0wNVhCNDRnNXhmbUNMd2RwVVR3QVQ4K0NCa3lMS0ZzZXprRDVLLzZXaGFYL1hyc2QvUWQwXG4yMEo3d2w1V2RIVTRjVkJtRlJqVndWemtsQ0syeVlKaThtang4c1hzR3E5UTFsYlVlTUtmVjlkc2dmdWhubEFTXG50blFaZ2x1Z09uRjJGZ1JoWGIvakswdHhUb2FvK2JORTZyNGdJRXpwa3RITEJUWXZ2aXVKbXJlZjdXYlBSdDRJXG5uZDlEN2xoeWJlYnloVjdrdXpqUUEvcFBLSFRGczhNVEhaOGhZVXhSeXJwbTMrTVl6UUQrYmpBMlUxRkljdGFVXG53UVhZV2FON3QydVR3Q3Q5ekFLc21ZL1dlT2J2bDNUWk41T05MQXp5V0dDdWxtNWN3S1IzeGJsQlp6WG5CNmdzXG5Pbk4yT0FkU3RjelRWQ3ljbThwY0ZVcnl0S1NLa0dFQ0F3RUFBVEFOQmdrcWhraUc5dzBCQVFVRkFBT0NBZ0VBXG5sSjAxd2NuMXZqWFhDSHVvaTdSMERKMWxseDErZGFmcXlFcVBBMjdKdStMWG1WVkdYUW9yUzFiOHhqVXFVa2NaXG5UQndiV0ZPNXo1ZFptTnZuYnlqYXptKzZvT2cwUE1hWXhoNlRGd3NJMlBPYmM3YkZ2MmVheXdQdC8xQ3BuYzQwXG5xVU1oZnZSeC9HQ1pQQ1d6My8yUlBKV1g5alFEU0hYQ1hxOEJXK0kvM2N1TERaeVkzZkVZQkIwcDNEdlZtYWQ2XG42V0hRYVVyaU4wL0xxeVNPcC9MWmdsbC90MDI5Z1dWdDA1WmliR29LK2NWaFpFY3NMY1VJaHJqMnVGR0ZkM0ltXG5KTGcxSktKN2pLU0JVUU9kSU1EdnNGVUY3WWRNdk11ckNZQTJzT05OOENaK0k1eFFWMUtTOWV2R0hNNWZtd2dTXG5PUEZ2UHp0RENpMC8xdVc5dE9nSHBvcnVvZGFjdCtFWk5rQVRYQ3ZaaXUydy9xdEtSSkY0VTRJVEVtNWFXMGt3XG42enVDOHh5SWt0N3ZoZHM0OFV1UlNHSDlqSnJBZW1sRWl6dEdJTGhHRHF6UUdZYmxoVVFGR01iQmI3amhlTHlDXG5MSjFXT0c2MkYxc3B4Q0tCekVXNXg2cFIxelQxbWhFZ2Q0TWtMYTZ6UFRwYWNyZDk1QWd4YUdLRUxhMVJXU0ZwXG5NdmRoR2s0TnY3aG5iOHIrQnVNUkM2aWVkUE1DelhxL001MGNOOEFnOGJ3K0oxYUZvKzBFSzJoV0phN2tpRStzXG45R3ZGalNkekNGbFVQaEtra1Vaa1NvNWFPdGNRcTdKdTZrV0JoTG9GWUtncHJscDFRVkIwc0daQTZvNkR0cWphXG5HNy9SazZ2YmFZOHdzTllLMnpCWFRUOG5laDVab1JaL1BKTFV0RUV0YzdZPVxuLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLSJ9	f
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
YiO5g4n9aj4N6K5r	e8RpyUBIAxTYUpu5	credential:owner	2025-11-06 15:36:06.934+00	2025-11-06 15:36:06.934+00
kPI2sESxpdDipRRh	e8RpyUBIAxTYUpu5	credential:owner	2025-11-07 16:26:24.271+00	2025-11-07 16:26:24.271+00
LOg9qvC6ODDyOno0	e8RpyUBIAxTYUpu5	credential:owner	2025-11-07 17:38:45.111+00	2025-11-07 17:38:45.111+00
\.


--
-- Data for Name: shared_workflow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shared_workflow" ("workflowId", "projectId", "role", "createdAt", "updatedAt") FROM stdin;
rqlUyMiEmIGvzbdF	e8RpyUBIAxTYUpu5	workflow:owner	2025-10-16 16:29:34.384+00	2025-10-16 16:29:34.384+00
CVzrDFsnctC7SzNS	e8RpyUBIAxTYUpu5	workflow:owner	2025-10-16 16:29:38.221+00	2025-10-16 16:29:38.221+00
voZ63FWwaK7OZ3qy	e8RpyUBIAxTYUpu5	workflow:owner	2025-11-06 15:24:22.717+00	2025-11-06 15:24:22.717+00
ucN5q0JcZhOAY6id	e8RpyUBIAxTYUpu5	workflow:owner	2025-11-06 15:24:29.028+00	2025-11-06 15:24:29.028+00
1hiCHSIWj6hNUOQB	e8RpyUBIAxTYUpu5	workflow:owner	2025-11-07 16:46:55.045+00	2025-11-07 16:46:55.045+00
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
-- Data for Name: workflow_dependency; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_dependency" ("id", "workflowId", "workflowVersionId", "dependencyType", "dependencyKey", "dependencyInfo", "indexVersionId", "createdAt") FROM stdin;
\.


--
-- Data for Name: workflow_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_history" ("versionId", "workflowId", "authors", "createdAt", "updatedAt", "nodes", "connections", "name", "autosaved", "description") FROM stdin;
46327ea6-6714-42a4-97d0-0ac05253e45f	CVzrDFsnctC7SzNS	system migration	2025-11-25 15:24:34.002+00	2025-11-25 15:24:34.002+00	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"2807691f-9cbc-4ae0-b99f-77abaff9ea3e","name":"When clicking ‘Execute workflow’"},{"parameters":{"sendTo":"amberbambico.54@gmail.com","subject":"hello","message":"hello","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.1,"position":[560,0],"id":"82b41fe9-0588-4c8c-aa14-a232fd07ec17","name":"Send a message","webhookId":"54d7bf6c-3c19-49a6-abd4-7233cb96feb4","credentials":{"gmailOAuth2":{"id":"V6F4PoZ5qguyZtAe","name":"Gmail account"}}},{"parameters":{"content":"## 1.\\n**Double click** to edit me. [Guide](https://docs.n8n.io/workflows/sticky-notes/)","width":448},"type":"n8n-nodes-base.stickyNote","position":[-16,-192],"typeVersion":1,"id":"1fa10d5e-c2c2-41b6-b6c5-9b32e7998bbc","name":"Sticky Note"},{"parameters":{"operation":"appendOrUpdate","documentId":{"__rl":true,"mode":"list","value":""},"sheetName":{"__rl":true,"mode":"list","value":""}},"type":"n8n-nodes-base.googleSheets","typeVersion":4.7,"position":[208,0],"id":"72f88487-827c-409c-a9db-6d0b93b75055","name":"Append or update row in sheet"}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Append or update row in sheet","type":"main","index":0}]]},"Append or update row in sheet":{"main":[[{"node":"Send a message","type":"main","index":0}]]}}	\N	f	\N
dc3dff43-103d-4a23-aae0-6ff5172f8433	rqlUyMiEmIGvzbdF	system migration	2025-11-25 15:24:34.002+00	2025-11-25 15:24:34.002+00	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.2,"position":[0,0],"id":"2de74a8d-0902-46e1-9259-058f2175b593","name":"Schedule Trigger"}]	{}	\N	f	\N
1df38851-8863-4a61-9f11-86b9292e0641	1hiCHSIWj6hNUOQB	system migration	2025-11-25 15:24:34.002+00	2025-11-25 15:24:34.002+00	[{"parameters":{"formTitle":"Test Info","formDescription":"Please Fill out the Form Below","formFields":{"values":[{"fieldLabel":"Full Name","placeholder":"Juan Tamad","requiredField":true},{"fieldLabel":"Email","fieldType":"email","placeholder":"Hello@gmail.com","requiredField":true},{"fieldLabel":"Phone Number","placeholder":"+63 912 345 6789","requiredField":true},{"fieldLabel":"Description","placeholder":"Please Provide a description below","requiredField":true}]},"options":{"appendAttribution":false}},"type":"n8n-nodes-base.formTrigger","typeVersion":2.3,"position":[0,0],"id":"7676b103-5de1-4298-83b4-8b09edc67ce8","name":"On form submission","webhookId":"b2482471-8fb8-4960-a39e-9464d2167715"},{"parameters":{"operation":"append","documentId":{"__rl":true,"value":"1D-2PlDusBNFCV6JIKdUze1dd0C9qOT6JhlTSI1IlauI","mode":"list","cachedResultName":"Activity n8n","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1D-2PlDusBNFCV6JIKdUze1dd0C9qOT6JhlTSI1IlauI/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":"gid=0","mode":"list","cachedResultName":"Sheet1","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1D-2PlDusBNFCV6JIKdUze1dd0C9qOT6JhlTSI1IlauI/edit#gid=0"},"columns":{"mappingMode":"defineBelow","value":{"Full Name":"={{ $json['Full Name'] }}","Email":"={{ $json.Email }}","Phone Number":"={{ $json['Phone Number'] }}","Description":"={{ $json.Description }}"},"matchingColumns":[],"schema":[{"id":"Full Name","displayName":"Full Name","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Email","displayName":"Email","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Phone Number","displayName":"Phone Number","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.googleSheets","typeVersion":4.7,"position":[208,0],"id":"dd6fe731-13c7-47e2-b72c-bf6b18e4dd28","name":"Append row in sheet","credentials":{"googleSheetsOAuth2Api":{"id":"YiO5g4n9aj4N6K5r","name":"Google Sheets account"}}},{"parameters":{"authentication":"oAuth2","select":"channel","channelId":{"__rl":true,"value":"C09REAYK8FP","mode":"list","cachedResultName":"ai"},"text":"=A New Client has been Added to the Data\\nFulle Name:{{ $json['Full Name'] }}\\nEmail:{{ $json.Email }}\\nPhone Number:{{ $json['Phone Number'] }}\\nDescription:{{ $json.Description }}","otherOptions":{}},"type":"n8n-nodes-base.slack","typeVersion":2.3,"position":[416,0],"id":"d82a7d3f-89b6-4147-bc45-9c3cfc3943d8","name":"Send a message","webhookId":"444f31bf-afcc-40bb-acc5-8aa50db553ab","credentials":{"slackOAuth2Api":{"id":"kPI2sESxpdDipRRh","name":"Slack account"}}},{"parameters":{"sendTo":"={{ $('Append row in sheet').item.json.Email }}","subject":"Thank you for submitting the form","emailType":"text","message":"=Hi {{ $('Append row in sheet').item.json['Full Name'] }},\\n\\nThank you for taking the time to fill out our form.\\nWe’ve received your information successfully and will review it shortly.\\n\\nIf you have any questions, feel free to reply to this message.\\nWe appreciate your time and interest!\\n\\nBest regards,\\nThe Team","options":{"appendAttribution":false}},"type":"n8n-nodes-base.gmail","typeVersion":2.1,"position":[624,0],"id":"9b321c83-b0de-4a20-94b3-8a8ab71f3019","name":"Send a message1","webhookId":"c5080767-d0f8-40d6-a8d9-b66396e79c3f","credentials":{"gmailOAuth2":{"id":"V6F4PoZ5qguyZtAe","name":"Gmail account"}}},{"parameters":{"familyName":"={{ $('Append row in sheet').item.json['Full Name'] }}","additionalFields":{"emailsUi":{"emailsValues":[{"type":"work","value":"={{ $('Append row in sheet').item.json.Email }}"}]},"phoneUi":{"phoneValues":[{"type":"work","value":"={{ $('Append row in sheet').item.json['Phone Number'] }}"}]}}},"type":"n8n-nodes-base.googleContacts","typeVersion":1,"position":[832,0],"id":"2ccae68f-4f7e-4f99-8baf-c9ee7948544a","name":"Create a contact","credentials":{"googleContactsOAuth2Api":{"id":"LOg9qvC6ODDyOno0","name":"Google Contacts account"}}},{"parameters":{"content":"## Trigger: Google Sheets\\n\\nName, email, phone number, description\\n"},"type":"n8n-nodes-base.stickyNote","position":[128,-208],"typeVersion":1,"id":"ebd56b3d-093b-45df-85de-d5649e3a620c","name":"Sticky Note"},{"parameters":{"content":"## Slack: Notify Your Team\\n\\nAdd a Slack node to send a message to your team's Channel asking to handle the client's Request\\n\\nthe message should show\\nName, email, phone number, description\\n\\n\\n","height":208,"width":304},"type":"n8n-nodes-base.stickyNote","position":[320,176],"typeVersion":1,"id":"5b68b80b-420a-492e-9228-9f5f33a57492","name":"Sticky Note1"},{"parameters":{"content":"## Gmail: Thank you Email to Client\\n\\nAdd a Gmail node to send a thank you email to the client's email address from the sheet.\\n","height":208},"type":"n8n-nodes-base.stickyNote","position":[544,-240],"typeVersion":1,"id":"ec0aedd1-bfd4-42b5-87a0-6fcac780de03","name":"Sticky Note2"},{"parameters":{"content":"## Google Contacts: Add Client\\n\\nAdd a Google Contacts node to create a new contact using the name, email, and phone number from your google sheet.\\n","height":208},"type":"n8n-nodes-base.stickyNote","position":[800,176],"typeVersion":1,"id":"74935353-81ef-4aef-b6bc-543b2f827367","name":"Sticky Note3"}]	{"On form submission":{"main":[[{"node":"Append row in sheet","type":"main","index":0}]]},"Append row in sheet":{"main":[[{"node":"Send a message","type":"main","index":0}]]},"Send a message":{"main":[[{"node":"Send a message1","type":"main","index":0}]]},"Send a message1":{"main":[[{"node":"Create a contact","type":"main","index":0}]]}}	\N	f	\N
98f1a092-d1bc-4097-9e0f-24c05477cc83	ucN5q0JcZhOAY6id	system migration	2025-11-25 15:24:34.002+00	2025-11-25 15:24:34.002+00	[{"parameters":{"formTitle":"Contact Form","formDescription":"Contact us when you have any problem to solve","formFields":{"values":[{"fieldLabel":"First Name","placeholder":"Enter you name","requiredField":true},{"fieldLabel":"Last Name","placeholder":"Enter your last name","requiredField":true},{"fieldLabel":"Email","fieldType":"email","placeholder":"Enter Your Email","requiredField":true},{"fieldLabel":"Description","placeholder":"Elaborate the problem"},{"fieldLabel":"Course Type","fieldType":"dropdown","fieldOptions":{"values":[{"option":"n8n course"},{"option":"Zapier couse"},{"option":"Midjourney course"}]}}]},"options":{}},"type":"n8n-nodes-base.formTrigger","typeVersion":2.3,"position":[0,0],"id":"cd57f4ca-774e-469e-95bf-b95c08107ccd","name":"On form submission","webhookId":"151d9ef3-a068-46f0-9527-4f50d54e0d0e"},{"parameters":{"operation":"append","documentId":{"__rl":true,"value":"19UYfLf85w9RCfKInEBL1SMfkfkuCyICxE2wcSK6CGNU","mode":"list","cachedResultName":"Customer Data","cachedResultUrl":"https://docs.google.com/spreadsheets/d/19UYfLf85w9RCfKInEBL1SMfkfkuCyICxE2wcSK6CGNU/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":"gid=0","mode":"list","cachedResultName":"Sheet1","cachedResultUrl":"https://docs.google.com/spreadsheets/d/19UYfLf85w9RCfKInEBL1SMfkfkuCyICxE2wcSK6CGNU/edit#gid=0"},"columns":{"mappingMode":"defineBelow","value":{"First Name ":"={{ $json['First Name'] }}","Last Name":"={{ $json['Last Name'] }}","Email":"={{ $json.Email }}","Description":"={{ $json.Description }}","Course Type":"={{ $json['Course Type'] }}"},"matchingColumns":[],"schema":[{"id":"First Name ","displayName":"First Name ","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Last Name","displayName":"Last Name","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Email","displayName":"Email","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Course Type","displayName":"Course Type","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.googleSheets","typeVersion":4.7,"position":[208,0],"id":"32e7a53c-aa23-4f88-a7b4-deffa7a668de","name":"Append row in sheet","credentials":{"googleSheetsOAuth2Api":{"id":"YiO5g4n9aj4N6K5r","name":"Google Sheets account"}}},{"parameters":{"sendTo":"=amberbambico.54@gmail.com","subject":"Thank you for your submission","emailType":"text","message":"=Hey {{ $json['First Name '] }}\\n\\nThank you for your submission, we want to confimr that we recieve a message and we will be contacting you soon.\\n\\nBest regards,\\nSupport Team","options":{"appendAttribution":false}},"type":"n8n-nodes-base.gmail","typeVersion":2.1,"position":[416,0],"id":"9dd9f512-5321-4deb-8846-764feee5e27e","name":"Send a message","webhookId":"5e3777a4-f485-4117-a7a5-c3d89fd13dba","credentials":{"gmailOAuth2":{"id":"V6F4PoZ5qguyZtAe","name":"Gmail account"}}},{"parameters":{"authentication":"oAuth2","select":"channel","channelId":{"__rl":true,"value":"C09REAYK8FP","mode":"list","cachedResultName":"ai"},"text":"=The new Client Submitted the form\\nFirst Name:{{ $('On form submission').item.json['First Name'] }}\\nEmail:{{ $('On form submission').item.json.Email }}\\nDescription:{{ $('On form submission').item.json.Description }}","otherOptions":{}},"type":"n8n-nodes-base.slack","typeVersion":2.3,"position":[624,0],"id":"2cc6c84e-be2a-4d23-aab3-d4e682b2ba23","name":"Send a message1","webhookId":"52d9201a-d517-4886-bf5e-af2bcdfdc1c3","credentials":{"slackOAuth2Api":{"id":"kPI2sESxpdDipRRh","name":"Slack account"}}}]	{"On form submission":{"main":[[{"node":"Append row in sheet","type":"main","index":0}]]},"Append row in sheet":{"main":[[{"node":"Send a message","type":"main","index":0}]]},"Send a message":{"main":[[{"node":"Send a message1","type":"main","index":0}]]}}	\N	f	\N
40e677c7-515b-44d8-8afe-580cfea9128c	voZ63FWwaK7OZ3qy	Fernan Bambico	2026-01-18 14:25:14.846+00	2026-01-18 14:25:14.846+00	[{"parameters":{},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[0,0],"id":"8d5f7278-84ce-414d-83cb-92d7c68b6c9a","name":"When clicking ‘Execute workflow’"},{"parameters":{"operation":"create","base":{"__rl":true,"value":"app9OlQDgg06lIquc","mode":"list","cachedResultName":"AI Project Tracker","cachedResultUrl":"https://airtable.com/app9OlQDgg06lIquc"},"table":{"__rl":true,"value":"tblxlfywGBNZrylPJ","mode":"list","cachedResultName":"Tasks","cachedResultUrl":"https://airtable.com/app9OlQDgg06lIquc/tblxlfywGBNZrylPJ"},"columns":{"mappingMode":"defineBelow","value":{"Task Name":"Create Module for n8n Course","Description":"For everyone that wants to be Familiar with n8n"},"matchingColumns":[],"schema":[{"id":"Task Name","displayName":"Task Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Due Date","displayName":"Due Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Not Started","value":"Not Started"},{"name":"In Progress","value":"In Progress"},{"name":"Completed","value":"Completed"},{"name":"Blocked","value":"Blocked"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Low","value":"Low"},{"name":"Medium","value":"Medium"},{"name":"High","value":"High"},{"name":"Critical","value":"Critical"}],"readOnly":false,"removed":false},{"id":"Assigned To","displayName":"Assigned To","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Milestone","displayName":"Milestone","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Project","displayName":"Project","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Resource Allocation","displayName":"Resource Allocation","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Reference Image","displayName":"Reference Image","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Estimated Hours","displayName":"Estimated Hours","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Days Until Due","displayName":"Days Until Due","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Is Overdue","displayName":"Is Overdue","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Assigned Team Member Count","displayName":"Assigned Team Member Count","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Total Allocated Hours","displayName":"Total Allocated Hours","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Milestone Status","displayName":"Milestone Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Project Status","displayName":"Project Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Task Summary (AI)","displayName":"Task Summary (AI)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Risk Assessment (AI)","displayName":"Risk Assessment (AI)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.1,"position":[208,0],"id":"443736dd-5d82-4b2f-9789-9dfa93e54d94","name":"Create a record","credentials":{"airtableTokenApi":{"id":"yX9lezaEQv8KPjgH","name":"Airtable Personal Access Token account 2"}}}]	{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}}	\N	f	\N
\.


--
-- Data for Name: workflow_statistics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_statistics" ("count", "latestEvent", "name", "workflowId", "rootCount") FROM stdin;
1	2025-10-16 16:40:37.228+00	data_loaded	CVzrDFsnctC7SzNS	1
9	2026-01-18 15:27:19.461+00	manual_success	rqlUyMiEmIGvzbdF	0
15	2025-10-26 14:54:58.78+00	manual_error	CVzrDFsnctC7SzNS	0
16	2025-10-31 13:27:41.336+00	manual_success	CVzrDFsnctC7SzNS	0
1	2025-11-06 15:24:31.756+00	data_loaded	voZ63FWwaK7OZ3qy	1
1	2025-11-06 15:24:35.278+00	data_loaded	ucN5q0JcZhOAY6id	1
5	2025-11-06 16:10:50.389+00	manual_error	ucN5q0JcZhOAY6id	0
9	2025-11-07 16:40:59.611+00	manual_success	ucN5q0JcZhOAY6id	0
1	2025-11-07 16:56:24.325+00	data_loaded	1hiCHSIWj6hNUOQB	1
5	2025-11-07 17:24:35.475+00	manual_success	1hiCHSIWj6hNUOQB	0
3	2025-11-07 17:39:40.269+00	manual_error	1hiCHSIWj6hNUOQB	0
1	2026-01-18 14:24:06.328+00	manual_success	voZ63FWwaK7OZ3qy	0
1	2026-01-18 15:09:26.948+00	manual_error	rqlUyMiEmIGvzbdF	0
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

SELECT pg_catalog.setval('"public"."execution_entity_id_seq"', 64, true);


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

SELECT pg_catalog.setval('"public"."migrations_id_seq"', 116, true);


--
-- Name: oauth_user_consents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."oauth_user_consents_id_seq"', 1, false);


--
-- Name: workflow_dependency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_dependency_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

-- \unrestrict 2PIzb8W1qI2V901ZCCEfVozL3Omhho6XuBaKlAazwpy4GB7reL3tUp38Uj1947t

RESET ALL;
