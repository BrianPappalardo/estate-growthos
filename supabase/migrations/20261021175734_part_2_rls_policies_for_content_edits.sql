DROP POLICY IF EXISTS "anyone can read content edits" ON public.content_edits;
CREATE POLICY "anyone can read content edits"
  ON public.content_edits
  FOR SELECT TO anon, authenticated
  USING (true);

DROP POLICY IF EXISTS "admin can write content edits" ON public.content_edits;
CREATE POLICY "admin can write content edits"
  ON public.content_edits
  FOR ALL TO authenticated
  USING (public.has_role(auth.uid(), 'admin'))
  WITH CHECK (public.has_role(auth.uid(), 'admin'));

DROP POLICY IF EXISTS "cms_images_public_read" ON storage.objects;
CREATE POLICY "cms_images_public_read"
  ON storage.objects
  FOR SELECT TO anon, authenticated
  USING (bucket_id = 'cms-images');

DROP POLICY IF EXISTS "cms_images_admin_insert" ON storage.objects;
CREATE POLICY "cms_images_admin_insert"
  ON storage.objects
  FOR INSERT TO authenticated
  WITH CHECK (bucket_id = 'cms-images' AND public.has_role(auth.uid(), 'admin'));

DROP POLICY IF EXISTS "cms_images_admin_update" ON storage.objects;
CREATE POLICY "cms_images_admin_update"
  ON storage.objects
  FOR UPDATE TO authenticated
  USING (bucket_id = 'cms-images' AND public.has_role(auth.uid(), 'admin'));

DROP POLICY IF EXISTS "cms_images_admin_delete" ON storage.objects;
CREATE POLICY "cms_images_admin_delete"
  ON storage.objects
  FOR DELETE TO authenticated
  USING (bucket_id = 'cms-images' AND public.has_role(auth.uid(), 'admin'));