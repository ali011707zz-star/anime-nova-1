package io.wax911.support.util;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: SupportStateUtil.kt */
/* loaded from: classes.dex */
public final class SupportStateUtil {
    public static final int RECYCLER_TYPE_CONTENT = 16;
    public static final int RECYCLER_TYPE_EMPTY = 257;
    public static final int RECYCLER_TYPE_ERROR = 272;
    public static final int RECYCLER_TYPE_HEADER = 17;
    public static final int RECYCLER_TYPE_LOADING = 256;
    public static final SupportStateUtil INSTANCE = new SupportStateUtil();
    private static final String key_navigation_selected = "key_navigation_selected";
    private static final String key_navigation_title = "key_navigation_title";
    private static final String key_pagination_limit = "key_pagination_limit";
    private static final String key_recycler_state = "key_recycler_state";
    private static final String key_bundle_param = "key_bundle_param";
    private static final String key_model_state = "key_model_state";
    private static final String key_pagination = "key_pagination";
    private static final String key_columns = "key_columns";
    private static final String arg_order = "order";
    private static final String arg_page_offset = "arg_page_offset";
    private static final String arg_page_limit = "arg_page_limit";
    private static final String arg_page = "arg_page";
    private static final String arg_positive_text = "arg_positive_text";
    private static final String arg_negative_text = "arg_negative_text";
    private static final String arg_bundle = "arg_bundle";

    /* compiled from: SupportStateUtil.kt */
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface RecyclerViewType {
    }

    private SupportStateUtil() {
    }

    public final String getArg_bundle() {
        return arg_bundle;
    }

    public final String getArg_negative_text() {
        return arg_negative_text;
    }

    public final String getArg_order() {
        return arg_order;
    }

    public final String getArg_page() {
        return arg_page;
    }

    public final String getArg_page_limit() {
        return arg_page_limit;
    }

    public final String getArg_page_offset() {
        return arg_page_offset;
    }

    public final String getArg_positive_text() {
        return arg_positive_text;
    }

    public final String getKey_bundle_param() {
        return key_bundle_param;
    }

    public final String getKey_columns() {
        return key_columns;
    }

    public final String getKey_model_state() {
        return key_model_state;
    }

    public final String getKey_navigation_selected() {
        return key_navigation_selected;
    }

    public final String getKey_navigation_title() {
        return key_navigation_title;
    }

    public final String getKey_pagination() {
        return key_pagination;
    }

    public final String getKey_pagination_limit() {
        return key_pagination_limit;
    }

    public final String getKey_recycler_state() {
        return key_recycler_state;
    }
}
