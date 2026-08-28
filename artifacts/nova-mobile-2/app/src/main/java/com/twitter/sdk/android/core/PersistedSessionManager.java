package com.twitter.sdk.android.core;

import com.twitter.sdk.android.core.Session;
import com.twitter.sdk.android.core.internal.persistence.PreferenceStore;
import com.twitter.sdk.android.core.internal.persistence.PreferenceStoreStrategy;
import com.twitter.sdk.android.core.internal.persistence.SerializationStrategy;
import com.twitter.sdk.android.core.internal.scribe.EventsFilesManager;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public class PersistedSessionManager<T extends Session> implements SessionManager<T> {
    private static final int NUM_SESSIONS = 1;
    private final AtomicReference<T> activeSessionRef;
    private final PreferenceStoreStrategy<T> activeSessionStorage;
    private final String prefKeySession;
    private final PreferenceStore preferenceStore;
    private volatile boolean restorePending;
    private final SerializationStrategy<T> serializer;
    private final ConcurrentHashMap<Long, T> sessionMap;
    private final ConcurrentHashMap<Long, PreferenceStoreStrategy<T>> storageMap;

    public PersistedSessionManager(PreferenceStore preferenceStore, SerializationStrategy<T> serializationStrategy, String str, String str2) {
        this(preferenceStore, serializationStrategy, new ConcurrentHashMap(1), new ConcurrentHashMap(1), new PreferenceStoreStrategy(preferenceStore, serializationStrategy, str), str2);
    }

    private void internalSetSession(long j10, T t10, boolean z10) {
        this.sessionMap.put(Long.valueOf(j10), t10);
        PreferenceStoreStrategy<T> preferenceStoreStrategy = this.storageMap.get(Long.valueOf(j10));
        if (preferenceStoreStrategy == null) {
            preferenceStoreStrategy = new PreferenceStoreStrategy<>(this.preferenceStore, this.serializer, getPrefKey(j10));
            this.storageMap.putIfAbsent(Long.valueOf(j10), preferenceStoreStrategy);
        }
        preferenceStoreStrategy.save(t10);
        T t11 = this.activeSessionRef.get();
        if (t11 == null || t11.getId() == j10 || z10) {
            synchronized (this) {
                this.activeSessionRef.compareAndSet(t11, t10);
                this.activeSessionStorage.save(t10);
            }
        }
    }

    private void restoreActiveSession() {
        T restore = this.activeSessionStorage.restore();
        if (restore != null) {
            internalSetSession(restore.getId(), restore, false);
        }
    }

    private synchronized void restoreAllSessions() {
        if (this.restorePending) {
            restoreActiveSession();
            restoreSessions();
            this.restorePending = false;
        }
    }

    private void restoreSessions() {
        T deserialize;
        for (Map.Entry<String, ?> entry : this.preferenceStore.get().getAll().entrySet()) {
            if (isSessionPreferenceKey(entry.getKey()) && (deserialize = this.serializer.deserialize((String) entry.getValue())) != null) {
                internalSetSession(deserialize.getId(), deserialize, false);
            }
        }
    }

    @Override // com.twitter.sdk.android.core.SessionManager
    public void clearActiveSession() {
        restoreAllSessionsIfNecessary();
        if (this.activeSessionRef.get() != null) {
            clearSession(this.activeSessionRef.get().getId());
        }
    }

    @Override // com.twitter.sdk.android.core.SessionManager
    public void clearSession(long j10) {
        restoreAllSessionsIfNecessary();
        if (this.activeSessionRef.get() != null && this.activeSessionRef.get().getId() == j10) {
            synchronized (this) {
                this.activeSessionRef.set(null);
                this.activeSessionStorage.clear();
            }
        }
        this.sessionMap.remove(Long.valueOf(j10));
        PreferenceStoreStrategy<T> remove = this.storageMap.remove(Long.valueOf(j10));
        if (remove != null) {
            remove.clear();
        }
    }

    @Override // com.twitter.sdk.android.core.SessionManager
    public T getActiveSession() {
        restoreAllSessionsIfNecessary();
        return this.activeSessionRef.get();
    }

    public String getPrefKey(long j10) {
        return this.prefKeySession + EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR + j10;
    }

    @Override // com.twitter.sdk.android.core.SessionManager
    public T getSession(long j10) {
        restoreAllSessionsIfNecessary();
        return this.sessionMap.get(Long.valueOf(j10));
    }

    @Override // com.twitter.sdk.android.core.SessionManager
    public Map<Long, T> getSessionMap() {
        restoreAllSessionsIfNecessary();
        return Collections.unmodifiableMap(this.sessionMap);
    }

    public boolean isSessionPreferenceKey(String str) {
        return str.startsWith(this.prefKeySession);
    }

    public void restoreAllSessionsIfNecessary() {
        if (this.restorePending) {
            restoreAllSessions();
        }
    }

    @Override // com.twitter.sdk.android.core.SessionManager
    public void setActiveSession(T t10) {
        if (t10 != null) {
            restoreAllSessionsIfNecessary();
            internalSetSession(t10.getId(), t10, true);
            return;
        }
        throw new IllegalArgumentException("Session must not be null!");
    }

    @Override // com.twitter.sdk.android.core.SessionManager
    public void setSession(long j10, T t10) {
        if (t10 != null) {
            restoreAllSessionsIfNecessary();
            internalSetSession(j10, t10, false);
            return;
        }
        throw new IllegalArgumentException("Session must not be null!");
    }

    public PersistedSessionManager(PreferenceStore preferenceStore, SerializationStrategy<T> serializationStrategy, ConcurrentHashMap<Long, T> concurrentHashMap, ConcurrentHashMap<Long, PreferenceStoreStrategy<T>> concurrentHashMap2, PreferenceStoreStrategy<T> preferenceStoreStrategy, String str) {
        this.restorePending = true;
        this.preferenceStore = preferenceStore;
        this.serializer = serializationStrategy;
        this.sessionMap = concurrentHashMap;
        this.storageMap = concurrentHashMap2;
        this.activeSessionStorage = preferenceStoreStrategy;
        this.activeSessionRef = new AtomicReference<>();
        this.prefKeySession = str;
    }
}
