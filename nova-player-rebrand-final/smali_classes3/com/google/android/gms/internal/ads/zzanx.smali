.class public final Lcom/google/android/gms/internal/ads/zzanx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamf;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzer;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzano;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzer;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzer;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zza:Lcom/google/android/gms/internal/ads/zzer;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzano;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzano;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzb:Lcom/google/android/gms/internal/ads/zzano;

    return-void
.end method


# virtual methods
.method public final zza([BIILcom/google/android/gms/internal/ads/zzame;Lcom/google/android/gms/internal/ads/zzdr;)V
    .locals 7

    add-int/2addr p3, p2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zza:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/gms/internal/ads/zzer;->zzb([BI)V

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    new-instance p1, Ljava/util/ArrayList;

    .line 3
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string p2, "Expected WEBVTT. Got "

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result p3

    .line 4
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzN(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    const-string v3, "WEBVTT"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzat; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_a

    :cond_0
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 11
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzer;->zzN(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    .line 13
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    :goto_0
    const/4 p3, -0x1

    const/4 v1, 0x0

    move v2, p3

    move v3, v1

    :goto_1
    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v2, p3, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result v3

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 14
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzN(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    const-string v6, "STYLE"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v2, v5

    goto :goto_1

    :cond_3
    const-string v5, "NOTE"

    .line 15
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_1

    :cond_4
    const/4 v2, 0x3

    goto :goto_1

    .line 16
    :cond_5
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    if-eqz v2, :cond_9

    if-ne v2, v4, :cond_6

    :goto_2
    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 17
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzer;->zzN(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p3

    .line 18
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_2

    :cond_6
    if-ne v2, v5, :cond_8

    .line 19
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 24
    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 20
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzer;->zzN(Ljava/nio/charset/Charset;)Ljava/lang/String;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzb:Lcom/google/android/gms/internal/ads/zzano;

    .line 21
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/ads/zzano;->zza(Lcom/google/android/gms/internal/ads/zzer;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 19
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A style block was found after the first cue."

    .line 24
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_8
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzanw;->zza(Lcom/google/android/gms/internal/ads/zzer;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzanq;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 23
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_9
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaoa;

    .line 25
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzaoa;-><init>(Ljava/util/List;)V

    .line 26
    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzalz;->zza(Lcom/google/android/gms/internal/ads/zzama;Lcom/google/android/gms/internal/ads/zzame;Lcom/google/android/gms/internal/ads/zzdr;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_3

    .line 6
    :cond_a
    :try_start_1
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzN(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 9
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzat; {:try_start_1 .. :try_end_1} :catch_0

    .line 26
    :goto_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 10
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
