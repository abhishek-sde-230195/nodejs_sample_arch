PGDMP          )                w         
   streethack    11.5    11.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    24674 
   streethack    DATABASE     �   CREATE DATABASE streethack WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE streethack;
             postgres    false            �            1259    24940    states    TABLE     �   CREATE TABLE public.states (
    id integer NOT NULL,
    state_name character varying(255),
    createdat timestamp with time zone NOT NULL,
    updatedat timestamp with time zone NOT NULL
);
    DROP TABLE public.states;
       public         postgres    false            �            1259    24938    states_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.states_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.states_id_seq1;
       public       postgres    false    199                       0    0    states_id_seq1    SEQUENCE OWNED BY     @   ALTER SEQUENCE public.states_id_seq1 OWNED BY public.states.id;
            public       postgres    false    198            �
           2604    24943 	   states id    DEFAULT     g   ALTER TABLE ONLY public.states ALTER COLUMN id SET DEFAULT nextval('public.states_id_seq1'::regclass);
 8   ALTER TABLE public.states ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198    199                      0    24940    states 
   TABLE DATA               F   COPY public.states (id, state_name, createdat, updatedat) FROM stdin;
    public       postgres    false    199   �                  0    0    states_id_seq1    SEQUENCE SET     =   SELECT pg_catalog.setval('public.states_id_seq1', 1, false);
            public       postgres    false    198            �
           2606    24945    states states_pkey1 
   CONSTRAINT     Q   ALTER TABLE ONLY public.states
    ADD CONSTRAINT states_pkey1 PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.states DROP CONSTRAINT states_pkey1;
       public         postgres    false    199            �
           2606    24947    states states_state_name_key1 
   CONSTRAINT     ^   ALTER TABLE ONLY public.states
    ADD CONSTRAINT states_state_name_key1 UNIQUE (state_name);
 G   ALTER TABLE ONLY public.states DROP CONSTRAINT states_state_name_key1;
       public         postgres    false    199               �  x���;o�0 ���+4u)�z����@ܸn�<�%��"BZ�R���؛�e�;}�x2X�@�F�!MXu�ҋ��	��l��KVM�'�,K��(����C����u�Ӵ�jc�r�tO�(;�Bc��Xs#���zP��~�W���,Y��8E��$� Ș�!��yEm�%?j
�麩�HX��?��AdE�Gc,�0��:�S,b	,x+Ə�0�ޏ7���)\;��������N��Rv�w��U�v�@�Y���xzQ%�P7��}<1a.���V���X.��kl�
~ac�9�҄vm-�M�1Ҕ|,5�eRX�Wj&<�.�Y�s4J3X�{mY��Lǵ�����)�VK��aJ	����Vp�a�6���K�2�;ܡ�i�,����P��i��Z~
%<q��W\Q��(�ɖ^���F�J)<��`�j��d���� ����!���>�����L�q&t�YO������YϗQ��M*     