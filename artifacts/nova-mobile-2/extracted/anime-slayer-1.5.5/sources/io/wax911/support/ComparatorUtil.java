package io.wax911.support;

import io.wax911.support.ComparatorUtil;
import java.util.Comparator;
import java.util.Map;

/* compiled from: SupportExtention.kt */
/* loaded from: classes.dex */
public final class ComparatorUtil {
    public static final ComparatorUtil INSTANCE = new ComparatorUtil();

    private ComparatorUtil() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getKeyComparator$lambda-0, reason: not valid java name */
    public static final int m2getKeyComparator$lambda0(Map.Entry entry, Map.Entry entry2) {
        return ((String) entry.getKey()).compareTo((String) entry2.getKey());
    }

    public final <T> Comparator<Map.Entry<String, T>> getKeyComparator() {
        return new Comparator() { // from class: nb.a
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m2getKeyComparator$lambda0;
                m2getKeyComparator$lambda0 = ComparatorUtil.m2getKeyComparator$lambda0((Map.Entry) obj, (Map.Entry) obj2);
                return m2getKeyComparator$lambda0;
            }
        };
    }
}
