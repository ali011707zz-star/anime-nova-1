.class public final Lcom/google/android/gms/internal/ads/zzfsd;
.super Lcom/google/android/gms/internal/ads/zzgtx;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgtx;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsd;->zza:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .locals 9

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfro;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfro;->zzf()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsd;->zza:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfro;

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfro;->zzf()I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfro;->zze()D

    move-result-wide v4

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfro;->zze()D

    move-result-wide v6

    cmpg-double v8, v4, v6

    if-ltz v8, :cond_1

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    .line 9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfro;->zzc()J

    move-result-wide v4

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfro;->zzc()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 11
    :cond_1
    invoke-interface {v2, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    move-object p1, v3

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsd;->zza:Ljava/util/LinkedList;

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final zza()Ljava/util/Queue;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsd;->zza:Ljava/util/LinkedList;

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsd;->zza:Ljava/util/LinkedList;

    return-object v0
.end method

.method public final synthetic zzc()Ljava/util/Collection;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsd;->zza:Ljava/util/LinkedList;

    return-object v0
.end method
