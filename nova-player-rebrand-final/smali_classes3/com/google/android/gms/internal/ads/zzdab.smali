.class final Lcom/google/android/gms/internal/ads/zzdab;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdct;
.implements Lcom/google/android/gms/internal/ads/zzdca;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfir;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzbxx;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdab;->zza:Lcom/google/android/gms/internal/ads/zzfir;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzb(Landroid/content/Context;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzc(Landroid/content/Context;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzg()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdab;->zza:Lcom/google/android/gms/internal/ads/zzfir;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfir;->zzad:Lcom/google/android/gms/internal/ads/zzbxy;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbxy;->zza:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbxy;->zzb:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
