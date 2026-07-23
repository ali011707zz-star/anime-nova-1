.class final Lcom/google/android/gms/internal/ads/zzgst;
.super Lcom/google/android/gms/internal/ads/zzgsr;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzgsu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgsu;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgst;->zzd:Lcom/google/android/gms/internal/ads/zzgsu;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgsr;-><init>(Lcom/google/android/gms/internal/ads/zzgss;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgsu;I)V
    .locals 1

    .line 2
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgst;->zzd:Lcom/google/android/gms/internal/ads/zzgsu;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgss;->zzb:Ljava/util/Collection;

    .line 3
    check-cast v0, Ljava/util/List;

    .line 4
    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgsr;-><init>(Lcom/google/android/gms/internal/ads/zzgss;Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgst;->zzd:Lcom/google/android/gms/internal/ads/zzgsu;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgsr;->zza()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgsr;->zza:Ljava/util/Iterator;

    .line 3
    check-cast v2, Ljava/util/ListIterator;

    .line 4
    invoke-interface {v2, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzgsu;->zzf:Lcom/google/android/gms/internal/ads/zzgsv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgsv;->zzp()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 5
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzgsv;->zzq(I)V

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgss;->zzc()V

    :cond_0
    return-void
.end method

.method public final hasPrevious()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgsr;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsr;->zza:Ljava/util/Iterator;

    .line 2
    check-cast v0, Ljava/util/ListIterator;

    .line 3
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final nextIndex()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgsr;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsr;->zza:Ljava/util/Iterator;

    .line 2
    check-cast v0, Ljava/util/ListIterator;

    .line 3
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgsr;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsr;->zza:Ljava/util/Iterator;

    .line 2
    check-cast v0, Ljava/util/ListIterator;

    .line 3
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgsr;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsr;->zza:Ljava/util/Iterator;

    .line 2
    check-cast v0, Ljava/util/ListIterator;

    .line 3
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgsr;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgsr;->zza:Ljava/util/Iterator;

    .line 2
    check-cast v0, Ljava/util/ListIterator;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
