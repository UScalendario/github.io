PGDMP     9                    z         
   formulario    14.5    14.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16561 
   formulario    DATABASE     i   CREATE DATABASE formulario WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Paraguay.1252';
    DROP DATABASE formulario;
                postgres    false            �           0    0    DATABASE formulario    COMMENT     F   COMMENT ON DATABASE formulario IS 'Base de Datos del Formularo HTML';
                   postgres    false    3311            �            1259    16563    Contacto    TABLE     :  CREATE TABLE public."Contacto" (
    "Nombre" character varying(55) NOT NULL,
    "Apellido" character varying(55) NOT NULL,
    correo character varying(55) NOT NULL,
    id_user integer NOT NULL,
    telefono numeric(11,0) NOT NULL,
    direccion character varying(255) NOT NULL,
    nacimiento date NOT NULL
);
    DROP TABLE public."Contacto";
       public         heap    postgres    false            �            1259    16562    Contacto_id_user_seq    SEQUENCE     �   CREATE SEQUENCE public."Contacto_id_user_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Contacto_id_user_seq";
       public          postgres    false    210            �           0    0    Contacto_id_user_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Contacto_id_user_seq" OWNED BY public."Contacto".id_user;
          public          postgres    false    209            \           2604    16566    Contacto id_user    DEFAULT     x   ALTER TABLE ONLY public."Contacto" ALTER COLUMN id_user SET DEFAULT nextval('public."Contacto_id_user_seq"'::regclass);
 A   ALTER TABLE public."Contacto" ALTER COLUMN id_user DROP DEFAULT;
       public          postgres    false    210    209    210            �          0    16563    Contacto 
   TABLE DATA           l   COPY public."Contacto" ("Nombre", "Apellido", correo, id_user, telefono, direccion, nacimiento) FROM stdin;
    public          postgres    false    210   R       �           0    0    Contacto_id_user_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Contacto_id_user_seq"', 1, false);
          public          postgres    false    209            �      x������ � �     