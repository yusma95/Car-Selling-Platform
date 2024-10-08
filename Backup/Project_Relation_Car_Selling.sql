PGDMP  &    +                |            Project Relation    16.3    16.3 ,    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    49329    Project Relation    DATABASE     �   CREATE DATABASE "Project Relation" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
 "   DROP DATABASE "Project Relation";
                postgres    false            �            1259    49455    ads    TABLE       CREATE TABLE public.ads (
    ad_id integer NOT NULL,
    user_id integer NOT NULL,
    product_id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text,
    price numeric(15,2) NOT NULL,
    is_negotiable boolean DEFAULT false
);
    DROP TABLE public.ads;
       public         heap    postgres    false            �            1259    49454    ads_ad_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ads_ad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.ads_ad_id_seq;
       public          postgres    false    222            �           0    0    ads_ad_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.ads_ad_id_seq OWNED BY public.ads.ad_id;
          public          postgres    false    221            �            1259    49475    bids    TABLE     �   CREATE TABLE public.bids (
    bid_id integer NOT NULL,
    ad_id integer NOT NULL,
    user_id integer NOT NULL,
    bid_amount numeric(15,2) NOT NULL,
    bid_time timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.bids;
       public         heap    postgres    false            �            1259    49474    bids_bid_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bids_bid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.bids_bid_id_seq;
       public          postgres    false    224            �           0    0    bids_bid_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.bids_bid_id_seq OWNED BY public.bids.bid_id;
          public          postgres    false    223            �            1259    49413    car_product    TABLE       CREATE TABLE public.car_product (
    product_id integer NOT NULL,
    brand character varying(50) NOT NULL,
    model character varying(100) NOT NULL,
    body_type character varying(50) NOT NULL,
    year integer NOT NULL,
    price numeric(15,2) NOT NULL
);
    DROP TABLE public.car_product;
       public         heap    postgres    false            �            1259    49412    car_product_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.car_product_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.car_product_product_id_seq;
       public          postgres    false    216            �           0    0    car_product_product_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.car_product_product_id_seq OWNED BY public.car_product.product_id;
          public          postgres    false    215            �            1259    49434    city    TABLE     �   CREATE TABLE public.city (
    kota_id integer NOT NULL,
    nama_kota character varying(100) NOT NULL,
    latitude double precision NOT NULL,
    longitude double precision NOT NULL
);
    DROP TABLE public.city;
       public         heap    postgres    false            �            1259    49433    city_kota_id_seq    SEQUENCE     �   CREATE SEQUENCE public.city_kota_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.city_kota_id_seq;
       public          postgres    false    218            �           0    0    city_kota_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.city_kota_id_seq OWNED BY public.city.kota_id;
          public          postgres    false    217            �            1259    49442    users    TABLE     �   CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(100) NOT NULL,
    contact_info character varying(150) NOT NULL,
    location_id integer NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    49441    users_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public          postgres    false    220            �           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;
          public          postgres    false    219            1           2604    49458 	   ads ad_id    DEFAULT     f   ALTER TABLE ONLY public.ads ALTER COLUMN ad_id SET DEFAULT nextval('public.ads_ad_id_seq'::regclass);
 8   ALTER TABLE public.ads ALTER COLUMN ad_id DROP DEFAULT;
       public          postgres    false    221    222    222            3           2604    49478    bids bid_id    DEFAULT     j   ALTER TABLE ONLY public.bids ALTER COLUMN bid_id SET DEFAULT nextval('public.bids_bid_id_seq'::regclass);
 :   ALTER TABLE public.bids ALTER COLUMN bid_id DROP DEFAULT;
       public          postgres    false    223    224    224            .           2604    49416    car_product product_id    DEFAULT     �   ALTER TABLE ONLY public.car_product ALTER COLUMN product_id SET DEFAULT nextval('public.car_product_product_id_seq'::regclass);
 E   ALTER TABLE public.car_product ALTER COLUMN product_id DROP DEFAULT;
       public          postgres    false    216    215    216            /           2604    49437    city kota_id    DEFAULT     l   ALTER TABLE ONLY public.city ALTER COLUMN kota_id SET DEFAULT nextval('public.city_kota_id_seq'::regclass);
 ;   ALTER TABLE public.city ALTER COLUMN kota_id DROP DEFAULT;
       public          postgres    false    218    217    218            0           2604    49445    users user_id    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    220    219    220            �          0    49455    ads 
   TABLE DATA           c   COPY public.ads (ad_id, user_id, product_id, title, description, price, is_negotiable) FROM stdin;
    public          postgres    false    222   i1       �          0    49475    bids 
   TABLE DATA           L   COPY public.bids (bid_id, ad_id, user_id, bid_amount, bid_time) FROM stdin;
    public          postgres    false    224   �8       �          0    49413    car_product 
   TABLE DATA           W   COPY public.car_product (product_id, brand, model, body_type, year, price) FROM stdin;
    public          postgres    false    216   �:       �          0    49434    city 
   TABLE DATA           G   COPY public.city (kota_id, nama_kota, latitude, longitude) FROM stdin;
    public          postgres    false    218   �<       �          0    49442    users 
   TABLE DATA           I   COPY public.users (user_id, name, contact_info, location_id) FROM stdin;
    public          postgres    false    220   %>       �           0    0    ads_ad_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.ads_ad_id_seq', 1, false);
          public          postgres    false    221            �           0    0    bids_bid_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.bids_bid_id_seq', 1, false);
          public          postgres    false    223            �           0    0    car_product_product_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.car_product_product_id_seq', 1, false);
          public          postgres    false    215            �           0    0    city_kota_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.city_kota_id_seq', 1, false);
          public          postgres    false    217            �           0    0    users_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.users_user_id_seq', 1, false);
          public          postgres    false    219            <           2606    49463    ads ads_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.ads
    ADD CONSTRAINT ads_pkey PRIMARY KEY (ad_id);
 6   ALTER TABLE ONLY public.ads DROP CONSTRAINT ads_pkey;
       public            postgres    false    222            >           2606    49481    bids bids_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.bids
    ADD CONSTRAINT bids_pkey PRIMARY KEY (bid_id);
 8   ALTER TABLE ONLY public.bids DROP CONSTRAINT bids_pkey;
       public            postgres    false    224            6           2606    49418    car_product car_product_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.car_product
    ADD CONSTRAINT car_product_pkey PRIMARY KEY (product_id);
 F   ALTER TABLE ONLY public.car_product DROP CONSTRAINT car_product_pkey;
       public            postgres    false    216            8           2606    49439    city city_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (kota_id);
 8   ALTER TABLE ONLY public.city DROP CONSTRAINT city_pkey;
       public            postgres    false    218            :           2606    49447    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    220            @           2606    49469    ads ads_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ads
    ADD CONSTRAINT ads_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.car_product(product_id);
 A   ALTER TABLE ONLY public.ads DROP CONSTRAINT ads_product_id_fkey;
       public          postgres    false    222    216    4662            A           2606    49464    ads ads_user_id_fkey    FK CONSTRAINT     x   ALTER TABLE ONLY public.ads
    ADD CONSTRAINT ads_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 >   ALTER TABLE ONLY public.ads DROP CONSTRAINT ads_user_id_fkey;
       public          postgres    false    222    220    4666            B           2606    49482    bids bids_ad_id_fkey    FK CONSTRAINT     r   ALTER TABLE ONLY public.bids
    ADD CONSTRAINT bids_ad_id_fkey FOREIGN KEY (ad_id) REFERENCES public.ads(ad_id);
 >   ALTER TABLE ONLY public.bids DROP CONSTRAINT bids_ad_id_fkey;
       public          postgres    false    4668    224    222            C           2606    49487    bids bids_user_id_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY public.bids
    ADD CONSTRAINT bids_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 @   ALTER TABLE ONLY public.bids DROP CONSTRAINT bids_user_id_fkey;
       public          postgres    false    224    220    4666            ?           2606    49448    users users_location_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_location_id_fkey FOREIGN KEY (location_id) REFERENCES public.city(kota_id);
 F   ALTER TABLE ONLY public.users DROP CONSTRAINT users_location_id_fkey;
       public          postgres    false    220    218    4664            �   O  x�eV�r�8<�_���D=�^Ow��m�LL�\ �Hb\<��~�d��g#�bS$UY�YU��ؗ�j�F���/urJ&�:�����#�1y�{<�S���J����4)m��72�u(���t�K��?� �;����;h��/��Զ�w�%ed���I��uӬ<I�t~�F�a��S!_�vVވ_����p�	N.x�k3�ϐx��8�޵)�����?�RħZ�b_���a,d�nr]2*���7�u\�Bp7�!@�9��T'IEi�R�?\���Y��B�-�;!�7�̍Tm�|����w뱗��:O!��N�Nqt>�&]�E��-} ������{:<qL�pV�V1BO��2�2�i�ڟ.�c�?��Q��x%��Ȫ����4)��9.����
ѧ���!�1!�\�� Rm9�@(�z[�:G���K����e�*d�f�W��r�r�>23����/�9�
��@E"yU]!�֙	 �Q����I���d���Y	�K]벨�:�#^�o�w&��9�v `"�n�'����S��.]�H������8ߢR�;���|�̵bq��M�렙��P�$'�o�3��(#���`͜+J�2M~�:�&��;�baf��8�M��OeQ_�_#��/ 9j�wY`8��(8�3�(V8�.�a໼F�btu��b�I�_��er2wbe5��R����QT�.��Ĝ�AJ�ǅ�7j�ڑm+A|� ǳ�f�X��8��OR�a�W�vpV�P~}�	��KØ�!x�cA�<�\0+T@��y.���̇�YR~Y \W׭��[�BA2��MQ�P�	�6�x��+*3!�V�i6��9NvY��iN�"o�T������a�("�;N�JrHp<� �
^��x�BL��cʷɕ1 �����R�@��)��F�l�^�@�����ZMl��SY���%��p��߽�sx.S��.��k?e.}B�n%��>�0�D�#��F�]���^;��=l�ݿ;juȠ8����΅l�9���:�³��kD�[T|��QR撨����ϐ|���������5)�䙑���@�^��<� S �[a��f%���٘�*�~Ǝ�[�n�|���I�
���˪m�`2}!�}\5�y��t^-����ո4���|.���U�����-���1�/�(ּ띞h�'[�%w4͑��p��w�G"�A��@��7^��Į�c	d;*�Z6�@l�vR������1���)� �X��T�T��u)J&WU���N�s���ժ	Z���ڭsD�5Gu�!8 Y�[!&����rx4:*b�-�..���.�-����i����8Lb߈/�'����&����]�%�`�$a����Dy*���@F�qsD{`����&�e�p���lI��<5���-,�{�3>_�C2
،�]$p<���{Z�x��T�d�u�4v.����A�:�-;�m�~�<��=ŠQx�2� ;�8�2rS�K!��h_���2�K��?���Z�lR�ՠ��h�)��Lv{|@�r��k���cC�m���=��v	 ��ko�]j��/8B�J?/��k3ѻCJ��l|T��>�����%o����x� .�/ϳ�n�[q@�l�?2��c�op�L70pB??LE�M�����e�G@�q96�fߜ�S�y#̯h�6�iwU!ss��[�}��WʠL���L��e����1����F������ܫ��S�λ3�0oM��d��O�6�k��U�Yq�x�٭����t�'e���h�2��m##w\�0QT��|<�J���������/J�p$      �   �  x�MS��8{KQ8�"�X&�8��t��� �12�hKY�CE���.ă|�+k���a�zo>�+�q�\����n��<��+������~��X�������~B�/�#dW~֔�TM�P�U���q���%�[0����)(?r�ѭԍe�6sl�Tj�Ϫ��E��8R���#t�h���4)*ly�q#.��JKF6�Y�f�nuY�^'�'��̤�'�9"��W�
�y�\�O�_]Z��f���M�K��O�<��=��S'�P(ϖ��辤�#{���	;Kё(H.�����\3{���w*C~�u��!�sB����g�e!���J�z� �g��κck�^���e�$gEe�F�$�D�<����W�����W�(&�p�\�:����w.�w$��/�E�D�m�#��l��>{!{q��&c;n�s�t���'Hn��[*��֜�?���      �     x����n�0���S����c�
�4m�\�p��� ��w��ֈ�E� �0����$����.�^�?iSm�m�-^���U�TN(oe�rBe"R@�2a�r��H�t� �ȴ�ˈ��!u�(��#�o�����*�K �k�P����%�P1Ko��J�z}���"���#�*O:����1grn����<�9��M�^�n�?��^�>e4@~ľq�x��PVDP5=��'GS`�Tu��T�V�>|�Y��Z�`���kp�B�-a��p�3�#|���)��\WI|��_�G�}�@�[�SL}�wV`#���i(�$ݗy��l@��z��>��o�x�t@kh���>
�X�._��MAoy���׶�לY ���g?�<��`:W����BT�KJ��^@w��7� �9P���*�MpV�W���#1�̗ϩ9%o#�f������1�G��Twd��:1�����5���U��`�`�ա;&���p���j��I+K�8���&��_8�_      �   R  x�U��j�0�s�{�˲d�v�(��ht��6-ir��OJ�Br	��/9	��� /�r�^߻�&C�a�3W�9c�B
k�5H/FD$�)E�(�i�r�����觚q�'�S��s�k 2Lk�ٞ�^i�i��2����I��ڤ�!�X���L��~��W�:J
� ���Kv�}_���W]*)�摳~8K�Z��h-�@L1���p�K���`�����?f��c;m�4m��C=�$[�����S{��ն��i�\4�rF4������o��N@>@Fe	��U�g��Ny��.����QV�v����c����L.3q��B𥸟W��?@ڕ�      �   #  x�-�1O�0�������}���R��R1�bH��AN���z�p���}z�)8Ŕ�Ϙ�y�)f�xҕEF�^�u!�B�L�c�s�{��nͪ$G�C#�6hH1�]jr���p�	Pa
�A�!�u��?�P��v�%/�`�<4����A�ŐpR�EZΐfv�8u�?��8�&���������!8��[�5��6��J%��
I�T�W�b�����u��h��R�7��MB�s⧡M�p��B{*c�bm�`�3%��w?�{�Z~��wLSi��A�eoܝ��e���l_V     