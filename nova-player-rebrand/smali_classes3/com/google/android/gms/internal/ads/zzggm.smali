.class final Lcom/google/android/gms/internal/ads/zzggm;
.super Lcom/google/android/gms/internal/ads/zzghb;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzawg;Lcom/google/android/gms/internal/ads/zzgfx;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgoe;)V
    .locals 7

    const/16 v0, 0x73

    .line 1
    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/ads/zzgoe;->zza(I)Lcom/google/android/gms/internal/ads/zzgoc;

    move-result-object v6

    const-string v2, "PH59Z8k3dpWxORUT8HU0o+g5WN12ilbJvwpqiSzw0bSm8ti3u+Yy1pYDsitXR/IS"

    const-string v3, "EBTPDqTGNNE4oafrCuyvamIcg1nistjqiNmDYn1J+fs="

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzghb;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzawg;Lcom/google/android/gms/internal/ads/zzgfx;Lcom/google/android/gms/internal/ads/zzgoc;)V

    iput-object p3, v1, Lcom/google/android/gms/internal/ads/zzggm;->zza:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected final zza(Ljava/lang/reflect/Method;Lcom/google/android/gms/internal/ads/zzawg;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggm;->zza:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    monitor-enter p2

    .line 3
    :try_start_0
    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzawg;->zzO(J)Lcom/google/android/gms/internal/ads/zzawg;

    .line 4
    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzawg;->zzd(J)Lcom/google/android/gms/internal/ads/zzawg;

    const/4 v0, 0x2

    .line 5
    aget-object v2, p1, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzawg;->zze(J)Lcom/google/android/gms/internal/ads/zzawg;

    const/4 v2, 0x3

    .line 6
    aget-object v3, p1, v2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzawg;->zzab(J)Lcom/google/android/gms/internal/ads/zzawg;

    const/4 v3, 0x4

    .line 7
    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/Boolean;

    if-nez v3, :cond_0

    .line 8
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzawg;->zzaf(I)Lcom/google/android/gms/internal/ads/zzawg;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 9
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v1, v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v0

    .line 10
    :goto_0
    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/ads/zzawg;->zzaf(I)Lcom/google/android/gms/internal/ads/zzawg;

    :goto_1
    const/4 v3, 0x5

    .line 11
    aget-object p1, p1, v3

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_2

    .line 12
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzawg;->zzae(I)Lcom/google/android/gms/internal/ads/zzawg;

    goto :goto_3

    .line 13
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eq v1, p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v0

    .line 14
    :goto_2
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzawg;->zzae(I)Lcom/google/android/gms/internal/ads/zzawg;

    .line 15
    :goto_3
    monitor-exit p2

    return-void

    :goto_4
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
