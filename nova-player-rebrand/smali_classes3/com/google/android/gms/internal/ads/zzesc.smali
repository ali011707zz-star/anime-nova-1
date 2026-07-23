.class public final Lcom/google/android/gms/internal/ads/zzesc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdor;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzerp;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdbi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdor;Lcom/google/android/gms/internal/ads/zzdxz;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzesc;->zza:Lcom/google/android/gms/internal/ads/zzdor;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzerp;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzerp;-><init>(Lcom/google/android/gms/internal/ads/zzdxz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzesc;->zzb:Lcom/google/android/gms/internal/ads/zzerp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdor;->zze()Lcom/google/android/gms/internal/ads/zzbrb;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzesb;

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzesb;-><init>(Lcom/google/android/gms/internal/ads/zzerp;Lcom/google/android/gms/internal/ads/zzbrb;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzesc;->zzc:Lcom/google/android/gms/internal/ads/zzdbi;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/internal/client/zzbk;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesc;->zzb:Lcom/google/android/gms/internal/ads/zzerp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzerp;->zzl(Lcom/google/android/gms/ads/internal/client/zzbk;)V

    return-void
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzdml;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdml;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzesc;->zzb:Lcom/google/android/gms/internal/ads/zzerp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzesc;->zza:Lcom/google/android/gms/internal/ads/zzdor;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzerp;->zzi()Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdml;-><init>(Lcom/google/android/gms/internal/ads/zzdor;Lcom/google/android/gms/ads/internal/client/zzbk;)V

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzerp;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesc;->zzb:Lcom/google/android/gms/internal/ads/zzerp;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzdct;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesc;->zzb:Lcom/google/android/gms/internal/ads/zzerp;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzdbi;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesc;->zzc:Lcom/google/android/gms/internal/ads/zzdbi;

    return-object v0
.end method
