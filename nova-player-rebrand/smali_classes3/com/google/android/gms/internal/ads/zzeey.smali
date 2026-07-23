.class final Lcom/google/android/gms/internal/ads/zzeey;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdel;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzccq;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzccq;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeey;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeey;->zzb:Lcom/google/android/gms/internal/ads/zzccq;

    return-void
.end method


# virtual methods
.method public final zzdO(Lcom/google/android/gms/internal/ads/zzbzu;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdP(Lcom/google/android/gms/internal/ads/zzfjc;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfjc;->zzb:Lcom/google/android/gms/internal/ads/zzfjb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjb;->zzb:Lcom/google/android/gms/internal/ads/zzfiu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfiu;->zze:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeey;->zzb:Lcom/google/android/gms/internal/ads/zzccq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeey;->zza:Landroid/content/Context;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfjc;->zza:Lcom/google/android/gms/internal/ads/zzfiz;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfiz;->zza:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfjk;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzccq;->zzc(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzm;)V

    .line 4
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzccq;->zzm(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
