import { Router } from 'express';
import { sbSelect } from '../lib/supabaseClient.js';
import { logger } from '../lib/logger.js';

const router = Router();

/**
 * GET /api/manga/catalog
 * Fetches manga from Supabase animewitcher_manga_catalog table.
 */
router.get('/manga/catalog', async (req, res) => {
  try {
    const page = parseInt(req.query.page as string || '1', 10);
    const limit = 20;
    const offset = (page - 1) * limit;

    const items = await sbSelect('animewitcher_manga_catalog', {}, {
      order: 'synced_at.desc',
      limit,
      offset
    });

    res.json({
      items: items.map(item => ({
        id: item.source_document_id,
        title: item.title,
        poster: item.poster_uri || item.poster || item.cover_uri,
        type: item.type_label,
        malId: item.mal_id,
        url: item.mangalek_page_url,
        story: item.story_en || item.story
      }))
    });
  } catch (error: any) {
    logger.error({ err: error.message }, '[manga] Failed to fetch catalog');
    res.status(500).json({ error: 'Failed to fetch manga catalog' });
  }
});

export default router;
