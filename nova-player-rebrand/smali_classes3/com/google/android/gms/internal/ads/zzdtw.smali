.class public final Lcom/google/android/gms/internal/ads/zzdtw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzboz;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdcm;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcas;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdcm;Lcom/google/android/gms/internal/ads/zzfir;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtw;->zza:Lcom/google/android/gms/internal/ads/zzdcm;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfir;->zzl:Lcom/google/android/gms/internal/ads/zzcas;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtw;->zzb:Lcom/google/android/gms/internal/ads/zzcas;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfir;->zzj:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtw;->zzc:Ljava/lang/String;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfir;->zzk:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtw;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtw;->zza:Lcom/google/android/gms/internal/ads/zzdcm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdcm;->zzd()V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzcas;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtw;->zzb:Lcom/google/android/gms/internal/ads/zzcas;

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcas;->zza:Ljava/lang/String;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzcas;->zzb:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 2
    const-string v0, ""

    .line 1
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcad;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzcad;-><init>(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtw;->zza:Lcom/google/android/gms/internal/ads/zzdcm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtw;->zzc:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdtw;->zzd:Ljava/lang/String;

    .line 2
    invoke-virtual {p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdcm;->zze(Lcom/google/android/gms/internal/ads/zzcag;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzc()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtw;->zza:Lcom/google/android/gms/internal/ads/zzdcm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdcm;->zzf()V

    return-void
.end method
