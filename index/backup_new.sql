--
-- PostgreSQL database dump
--

\restrict YgbTDfl0eIVw3oVVh5F3vdFDIkKYrhCUm1NVbaa75jjwr0d0eXR9UsaDyOQ33zT

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

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
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (2, 'auth', 'group');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (3, 'auth', 'permission');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (4, 'auth', 'user');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (6, 'sessions', 'session');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (7, 'index', 'studentprofile');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (8, 'index', 'courses');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (9, 'index', 'entrollment');


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (5, 'Can add permission', 3, 'add_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (6, 'Can change permission', 3, 'change_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (7, 'Can delete permission', 3, 'delete_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (8, 'Can view permission', 3, 'view_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (9, 'Can add group', 2, 'add_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (10, 'Can change group', 2, 'change_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (11, 'Can delete group', 2, 'delete_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (12, 'Can view group', 2, 'view_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (25, 'Can add student profile', 7, 'add_studentprofile');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (26, 'Can change student profile', 7, 'change_studentprofile');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (27, 'Can delete student profile', 7, 'delete_studentprofile');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (28, 'Can view student profile', 7, 'view_studentprofile');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (29, 'Can add course', 8, 'add_course');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (30, 'Can change course', 8, 'change_course');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (31, 'Can delete course', 8, 'delete_course');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (32, 'Can view course', 8, 'view_course');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (33, 'Can add courses', 8, 'add_courses');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (34, 'Can change courses', 8, 'change_courses');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (35, 'Can delete courses', 8, 'delete_courses');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (36, 'Can view courses', 8, 'view_courses');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (37, 'Can add entrollment', 9, 'add_entrollment');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (38, 'Can change entrollment', 9, 'change_entrollment');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (39, 'Can delete entrollment', 9, 'delete_entrollment');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (40, 'Can view entrollment', 9, 'view_entrollment');


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (6, 'pbkdf2_sha256$1200000$djjx4MH96MCsMmKvqB5Sle$A9fee1ee+rrlEh+m0yHlLvjzkr+C2P1QABp4nG+GnnA=', '2026-04-09 10:50:32.848055+05:30', false, 'zayan', '', '', 'zayan@gmail.com', false, true, '2026-04-09 10:50:17.621878+05:30');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (7, 'pbkdf2_sha256$1200000$esD7bl6WIU9II5hSNU6hsG$eCnNrLBoK1RSckYCK58+ZrLQGqqzCgzN04t2ZJnQo34=', '2026-04-09 23:05:39.06823+05:30', false, 'nazil', '', '', 'nazil@gmail.com', false, true, '2026-04-09 23:04:30.588472+05:30');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (5, 'pbkdf2_sha256$1200000$lndAbZmOn2Lqn1UlN4UVAe$WOOk5rvkMyXdjLQpiX7iUl8XT7EgJzy6W+W4Q253ZvQ=', '2026-04-08 21:33:12.264672+05:30', false, 'ridhan', '', '', 'ridhan@gmail.com', false, false, '2026-04-08 19:26:55.410556+05:30');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (8, 'pbkdf2_sha256$1200000$7yRj4mZktTbsVmeSleTp5h$iqErLO+uKp7h97iHkSxeuq97xrvmpAsNbt+cZPozUMQ=', '2026-04-11 14:39:39.746278+05:30', false, 'ramees', '', '', 'ramees@gmail.com', false, true, '2026-04-11 14:20:13.442196+05:30');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (9, 'pbkdf2_sha256$1200000$bmRfgzmWAEa6yTTWdRzddS$A74zxPzmXpQUQWgEcb+XOVBjanmwn1sX6ISPdiyJemo=', '2026-04-11 14:47:05.605565+05:30', false, 'abhinav', '', '', 'abi@gmail.com', false, true, '2026-04-11 14:46:29.070688+05:30');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (1, 'pbkdf2_sha256$1200000$IkvE2KuXRqeSWse1EzqG3D$Gg46Hrnn8tQEoPWLA1pQ3FRPmPphj0h85yH14tJWdxQ=', '2026-04-24 18:45:59.654501+05:30', false, 'fahim', '', '', 'fahim@gmail.com', true, true, '2026-04-07 14:41:00.254481+05:30');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (3, 'pbkdf2_sha256$1200000$164xD19vyamhHI0zembEiA$hOdVNd1+3X6T0M/Qkz3HWcrTdfT7WUxDgWyr1fikJOk=', '2026-04-25 21:37:41.717273+05:30', false, 'admin', 'Fahim mohammed.p', '', 'admin@gmail.com', false, true, '2026-04-07 16:02:22.936175+05:30');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (4, 'pbkdf2_sha256$1200000$spdJ3ZGk2pWd7g922USU6E$mAR4wCItfkK3pqiD5oKRiXBnUsM/oQKxFckdA1HXfPQ=', NULL, false, 'fidha', '', '', 'fidha@gmail.com', false, true, '2026-04-08 18:36:50.018168+05:30');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (2, 'pbkdf2_sha256$1200000$r4gklqPOGhNBCCbShqVymX$VBLH45H9LyQa6rbhEvfwgRSusTVBZUOc9kcGyC/kQHM=', '2026-04-07 15:32:58.01738+05:30', false, 'abhiram', '', '', 'abhiram@gmail.com', false, true, '2026-04-07 15:32:43.889102+05:30');


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2026-04-07 14:38:18.679083+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2026-04-07 14:38:18.85808+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2026-04-07 14:38:18.922471+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2026-04-07 14:38:18.941397+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2026-04-07 14:38:18.962675+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2026-04-07 14:38:19.013545+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2026-04-07 14:38:19.039194+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (8, 'auth', '0003_alter_user_email_max_length', '2026-04-07 14:38:19.059554+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (9, 'auth', '0004_alter_user_username_opts', '2026-04-07 14:38:19.087333+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (10, 'auth', '0005_alter_user_last_login_null', '2026-04-07 14:38:19.107716+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (11, 'auth', '0006_require_contenttypes_0002', '2026-04-07 14:38:19.111706+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2026-04-07 14:38:19.137639+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (13, 'auth', '0008_alter_user_username_max_length', '2026-04-07 14:38:19.172375+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2026-04-07 14:38:19.194439+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (15, 'auth', '0010_alter_group_name_max_length', '2026-04-07 14:38:19.223378+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (16, 'auth', '0011_update_proxy_permissions', '2026-04-07 14:38:19.259668+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2026-04-07 14:38:19.288236+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (18, 'index', '0001_initial', '2026-04-07 14:38:19.356711+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (19, 'sessions', '0001_initial', '2026-04-07 14:38:19.387239+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (20, 'index', '0002_studentprofile_course_studentprofile_email_and_more', '2026-04-08 13:00:14.275787+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (21, 'index', '0003_course', '2026-04-08 18:07:56.519668+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (22, 'index', '0004_remove_studentprofile_course_rename_course_courses_and_more', '2026-04-08 20:04:02.016071+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (23, 'index', '0005_studentprofile_avatar_alter_studentprofile_phone_and_more', '2026-04-08 21:30:40.297772+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (24, 'index', '0006_studentprofile_is_banned', '2026-04-09 21:11:57.028957+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (25, 'index', '0007_remove_courses_thumbnail_courses_icon_class', '2026-04-10 10:47:43.07279+05:30');


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('23lzvwe3wnlcl7igw73fb4s0puuxcy5t', '.eJxVjMsOwiAQAP9lz4awUKD06N1vILs8pGpoUtqT8d9Nkx70OjOZNwTatxr2ntcwJ5gA4fLLmOIzt0OkB7X7IuLStnVmcSTitF3clpRf17P9G1TqFSawmRxKXyKh0UUW1BiLpqEoVMkzWu2iIcWcJKrkcmYenfXGD9GMUhf4fAHqnjfy:1wBCsK:DDQtANpl6awbnJg1MXu-QSAzm64n5_-qevbzbB8CYiA', '2026-04-24 20:00:24.335006+05:30');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('51ox3sf5kqu1m00k1jq8rtssky9jjkfa', '.eJxVjMsOwiAQAP9lz4awUKD06N1vILs8pGpoUtqT8d9Nkx70OjOZNwTatxr2ntcwJ5gA4fLLmOIzt0OkB7X7IuLStnVmcSTitF3clpRf17P9G1TqFSawmRxKXyKh0UUW1BiLpqEoVMkzWu2iIcWcJKrkcmYenfXGD9GMUhf4fAHqnjfy:1wBUTQ:xT8PqgGWTrLciFsI2Z0o5D3FjyXRZpVEF5fwUxUU0uI', '2026-04-25 14:47:52.7968+05:30');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('6gu1erc4j463yewaa20sc0ospr7ape55', '.eJxVjDEOwjAMAP_iGUVxHELoyM4bojg2pIBSqWknxN9RpQ6w3p3uDSmvS01r1zmNAgMQHH4Z5_LUtgl55HafTJnaMo9stsTstpvrJPq67O3foOZeYQDFqMwOnS0xUBRRR4TkGEXOnkIUTxyoRH9DG4-KIeRTYUvWe0ZP8PkC0kg2-A:1wCD6Y:4wVQCLAAX_9Gv7cC1WLGkHLK2shT5m-4Sg6zKFVKy6o', '2026-04-27 14:27:14.700847+05:30');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('x7iwfmqtsq47un8bjaifx4pv68wfim58', '.eJxVjMsOwiAQAP9lz4awUKD06N1vILs8pGpoUtqT8d9Nkx70OjOZNwTatxr2ntcwJ5gA4fLLmOIzt0OkB7X7IuLStnVmcSTitF3clpRf17P9G1TqFSawmRxKXyKh0UUW1BiLpqEoVMkzWu2iIcWcJKrkcmYenfXGD9GMUhf4fAHqnjfy:1wGGNz:HdC0kzo0lli1RVcxp8vbDWuqIqgXhPesbej21P5nvTc', '2026-05-08 18:45:59.664679+05:30');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('xfi746td6fa8sjh5zcytxj143ifa22bc', '.eJxVjDEOwjAMAP_iGUVxHELoyM4bojg2pIBSqWknxN9RpQ6w3p3uDSmvS01r1zmNAgMQHH4Z5_LUtgl55HafTJnaMo9stsTstpvrJPq67O3foOZeYQDFqMwOnS0xUBRRR4TkGEXOnkIUTxyoRH9DG4-KIeRTYUvWe0ZP8PkC0kg2-A:1wA9y8:c3imLKy-IEcJbe6qlkcwuk2S14rqK8giY6p-W9jEPL8', '2026-04-21 22:42:04.291267+05:30');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('d8vdouytzb2pta0co72td1clggjitgzg', '.eJxVjDEOwjAMAP_iGUVxHELoyM4bojg2pIBSqWknxN9RpQ6w3p3uDSmvS01r1zmNAgMQHH4Z5_LUtgl55HafTJnaMo9stsTstpvrJPq67O3foOZeYQDFqMwOnS0xUBRRR4TkGEXOnkIUTxyoRH9DG4-KIeRTYUvWe0ZP8PkC0kg2-A:1wAJvq:9lt0pvJ9n-mXmBjdUP09thQswS2nYR2lkgZmzTk_1s8', '2026-04-22 09:20:22.819871+05:30');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('20r9tl6ldj5kzfbuwjpbbuj76u2vpbwr', '.eJxVjDEOwjAMAP_iGUVxHELoyM4bojg2pIBSqWknxN9RpQ6w3p3uDSmvS01r1zmNAgMQHH4Z5_LUtgl55HafTJnaMo9stsTstpvrJPq67O3foOZeYQDFqMwOnS0xUBRRR4TkGEXOnkIUTxyoRH9DG4-KIeRTYUvWe0ZP8PkC0kg2-A:1wGfXh:bmab6jOD5idCHnlWOh10lHQEjKh5GA2XRdDo29d12ls', '2026-05-09 21:37:41.723015+05:30');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('1tbj19j6m1j0bouxmu7e7wvge0067mwo', '.eJxVjDEOwjAMAP_iGUVxHELoyM4bojg2pIBSqWknxN9RpQ6w3p3uDSmvS01r1zmNAgMQHH4Z5_LUtgl55HafTJnaMo9stsTstpvrJPq67O3foOZeYQDFqMwOnS0xUBRRR4TkGEXOnkIUTxyoRH9DG4-KIeRTYUvWe0ZP8PkC0kg2-A:1wAVNO:IBd7GmAR7QcJkomFO_Ne8WHXK4w1_3RbN6dsvFAC9Ro', '2026-04-22 21:33:34.532804+05:30');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('tr67bkg1t9lpq7n3sbrr0i6bsxdw2x27', 'e30:1wArZQ:GPadWVckkT_e7JalIO-lX6ep3bZKRLUnfB5Ui_Scp8I', '2026-04-23 21:15:28.787771+05:30');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('nfus4pzbb0j4etv7oao5jvgnv1v9kfdw', '.eJxVjMsOwiAQAP9lz4awUKD06N1vILs8pGpoUtqT8d9Nkx70OjOZNwTatxr2ntcwJ5gA4fLLmOIzt0OkB7X7IuLStnVmcSTitF3clpRf17P9G1TqFSawmRxKXyKh0UUW1BiLpqEoVMkzWu2iIcWcJKrkcmYenfXGD9GMUhf4fAHqnjfy:1wB9UA:rjwN9J8S8077dShrwSso2zMMF28Czv9wBvCW-eJuZ7A', '2026-04-24 16:23:14.427911+05:30');


--
-- Data for Name: index_courses; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.index_courses (id, title, description, duration, fee, icon_class) VALUES (1, 'Python Full Stack', 'Master Django, React, and Database management from scratch.', '6 Months', 20000.00, 'fa-solid fa-code');
INSERT INTO public.index_courses (id, title, description, duration, fee, icon_class) VALUES (9, 'UI/UX Design', 'Learn Figma, user research, and premium prototyping techniques.', '3 Months', 8000.00, 'fa-solid fa-bezier-curve');
INSERT INTO public.index_courses (id, title, description, duration, fee, icon_class) VALUES (8, 'C Basics', 'Build a strong foundation with the mother of all programming', '2 Months', 4000.00, 'fa-solid fa-terminal');
INSERT INTO public.index_courses (id, title, description, duration, fee, icon_class) VALUES (7, 'C++ Programming', 'Master data structures, algorithms, and system-level programming.', '4 Months', 5000.00, 'fa-solid fa-file-code');
INSERT INTO public.index_courses (id, title, description, duration, fee, icon_class) VALUES (6, 'GoLang Pro', 'Learn high-performance backend development with Google''s Go', '3 Months', 10000.00, 'fa-brands fa-golang');
INSERT INTO public.index_courses (id, title, description, duration, fee, icon_class) VALUES (5, 'Java Development', 'Master Core Java, Spring Boot, and Microservices for backend', '5 Months', 12000.00, 'fa-brands fa-java');
INSERT INTO public.index_courses (id, title, description, duration, fee, icon_class) VALUES (4, '.NET Full Stack', 'Professional enterprise app development with C#, ASP.NET Core, and SQL.', '6 Months', 18000.00, 'fa-brands fa-microsoft');
INSERT INTO public.index_courses (id, title, description, duration, fee, icon_class) VALUES (3, 'MEAN Stack', 'Advanced full-stack development with MongoDB, Express, Angular, and Node.', '6 Months', 16000.00, 'fa-brands fa-angular');
INSERT INTO public.index_courses (id, title, description, duration, fee, icon_class) VALUES (2, 'MERN Stack', 'Build scalable web apps using MongoDB, Express, React, and Node.js.', '6 Months', 16000.00, 'fa-brands fa-node-js');


--
-- Data for Name: index_entrollment; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.index_entrollment (id, entrolled_at, courses_id, user_id) VALUES (2, '2026-04-08 20:17:46.147971+05:30', 5, 5);
INSERT INTO public.index_entrollment (id, entrolled_at, courses_id, user_id) VALUES (8, '2026-04-09 10:42:21.497392+05:30', 4, 3);
INSERT INTO public.index_entrollment (id, entrolled_at, courses_id, user_id) VALUES (9, '2026-04-09 10:51:38.449901+05:30', 1, 6);
INSERT INTO public.index_entrollment (id, entrolled_at, courses_id, user_id) VALUES (10, '2026-04-09 23:05:51.034061+05:30', 8, 7);
INSERT INTO public.index_entrollment (id, entrolled_at, courses_id, user_id) VALUES (15, '2026-04-11 14:35:44.171189+05:30', 6, 8);
INSERT INTO public.index_entrollment (id, entrolled_at, courses_id, user_id) VALUES (16, '2026-04-11 14:47:36.866448+05:30', 8, 9);


--
-- Data for Name: index_studentprofile; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.index_studentprofile (id, roll_number, phone, user_id, email, full_name, avatar, is_banned) VALUES (8, '000', '99999999999999', 8, 'ramees@gmail.com', 'ramees_moh', 4, false);
INSERT INTO public.index_studentprofile (id, roll_number, phone, user_id, email, full_name, avatar, is_banned) VALUES (9, '111', '', 9, NULL, NULL, 3, false);
INSERT INTO public.index_studentprofile (id, roll_number, phone, user_id, email, full_name, avatar, is_banned) VALUES (7, '99a', '', 7, NULL, NULL, 4, false);
INSERT INTO public.index_studentprofile (id, roll_number, phone, user_id, email, full_name, avatar, is_banned) VALUES (6, '19A', '9633162673', 6, 'zayan@gmail.com', 'zayan shihas p', 5, false);
INSERT INTO public.index_studentprofile (id, roll_number, phone, user_id, email, full_name, avatar, is_banned) VALUES (2, 's2a', '', 2, NULL, NULL, 0, false);
INSERT INTO public.index_studentprofile (id, roll_number, phone, user_id, email, full_name, avatar, is_banned) VALUES (3, 'ad99', '7012500342', 3, 'admin@gmail.com', 'Fahim mohammed.p', 2, false);
INSERT INTO public.index_studentprofile (id, roll_number, phone, user_id, email, full_name, avatar, is_banned) VALUES (1, 'f1', '', 1, NULL, NULL, 5, false);
INSERT INTO public.index_studentprofile (id, roll_number, phone, user_id, email, full_name, avatar, is_banned) VALUES (5, 'a1', '123456789', 5, 'ridhan@gmail.com', 'ridhan', 6, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 9, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 25, true);


--
-- Name: index_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.index_course_id_seq', 13, true);


--
-- Name: index_entrollment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.index_entrollment_id_seq', 17, true);


--
-- Name: index_studentprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.index_studentprofile_id_seq', 9, true);


--
-- PostgreSQL database dump complete
--

\unrestrict YgbTDfl0eIVw3oVVh5F3vdFDIkKYrhCUm1NVbaa75jjwr0d0eXR9UsaDyOQ33zT

