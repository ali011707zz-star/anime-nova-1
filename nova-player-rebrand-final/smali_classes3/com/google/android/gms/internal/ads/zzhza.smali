.class abstract Lcom/google/android/gms/internal/ads/zzhza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field zza:Lcom/google/android/gms/internal/ads/zzhzb;

.field zzb:Lcom/google/android/gms/internal/ads/zzhzb;

.field zzc:I

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzhzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzhzc;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhza;->zzd:Lcom/google/android/gms/internal/ads/zzhzc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhzc;->zzd:Lcom/google/android/gms/internal/ads/zzhzb;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhzb;->zzd:Lcom/google/android/gms/internal/ads/zzhzb;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhza;->zza:Lcom/google/android/gms/internal/ads/zzhzb;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhza;->zzb:Lcom/google/android/gms/internal/ads/zzhzb;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzhzc;->zzc:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhza;->zzc:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhza;->zzd:Lcom/google/android/gms/internal/ads/zzhzc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhza;->zza:Lcom/google/android/gms/internal/ads/zzhzb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhzc;->zzd:Lcom/google/android/gms/internal/ads/zzhzb;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final remove()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhza;->zzb:Lcom/google/android/gms/internal/ads/zzhzb;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhza;->zzd:Lcom/google/android/gms/internal/ads/zzhzc;

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzhzc;->zzd(Lcom/google/android/gms/internal/ads/zzhzb;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhza;->zzb:Lcom/google/android/gms/internal/ads/zzhzb;

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzhzc;->zzc:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhza;->zzc:I

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method final zza()Lcom/google/android/gms/internal/ads/zzhzb;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhza;->zzd:Lcom/google/android/gms/internal/ads/zzhzc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhza;->zza:Lcom/google/android/gms/internal/ads/zzhzb;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzhzc;->zzd:Lcom/google/android/gms/internal/ads/zzhzb;

    if-eq v1, v2, :cond_1

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzhzc;->zzc:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzhza;->zzc:I

    if-ne v0, v2, :cond_0

    .line 3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzhzb;->zzd:Lcom/google/android/gms/internal/ads/zzhzb;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhza;->zza:Lcom/google/android/gms/internal/ads/zzhzb;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhza;->zzb:Lcom/google/android/gms/internal/ads/zzhzb;

    return-object v1

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 2
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
