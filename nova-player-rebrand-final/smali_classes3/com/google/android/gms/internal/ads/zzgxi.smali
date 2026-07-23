.class public final Lcom/google/android/gms/internal/ads/zzgxi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/ads/zzgxh;


# instance fields
.field private final zza:Ljava/util/Deque;

.field private zzb:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgxh;->zza:Lcom/google/android/gms/internal/ads/zzgxh;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgxi;->zzc:Lcom/google/android/gms/internal/ads/zzgxh;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgxh;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayDeque;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgxi;->zza:Ljava/util/Deque;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzgxi;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgxi;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgxi;->zzc:Lcom/google/android/gms/internal/ads/zzgxh;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgxi;-><init>(Lcom/google/android/gms/internal/ads/zzgxh;)V

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxi;->zzb:Ljava/lang/Throwable;

    move-object v1, v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxi;->zza:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;

    .line 3
    :try_start_0
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v8, v0

    if-nez v1, :cond_1

    move-object v1, v8

    goto :goto_0

    :cond_1
    if-eq v1, v8, :cond_0

    .line 4
    :try_start_1
    invoke-virtual {v1, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 5
    :catchall_1
    sget-object v3, Lcom/google/android/gms/internal/ads/zzgxg;->zza:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "<init>"

    const-string v2, "Suppressing exception thrown when closing "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "com.google.common.io.Closer"

    invoke-virtual/range {v3 .. v8}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxi;->zzb:Ljava/lang/Throwable;

    if-nez v0, :cond_4

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const-class v0, Ljava/io/IOException;

    .line 6
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgrz;->zza(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgrz;->zzb(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/AssertionError;

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    :goto_1
    return-void
.end method

.method public final zzb(Ljava/io/Closeable;)Ljava/io/Closeable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxi;->zza:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final zzc(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgxi;->zzb:Ljava/lang/Throwable;

    const-class v0, Ljava/io/IOException;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgrz;->zza(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgrz;->zzb(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/RuntimeException;

    .line 3
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
