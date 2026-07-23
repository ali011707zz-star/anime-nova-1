.class public final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdjy;


# instance fields
.field private final zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;

.field private final zzb:I

.field private final zzc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbl;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;

    iput p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbl;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbl;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final synthetic zza(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbl;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbl;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbl;->zzb:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbl;->zzc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbl;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;)V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzh(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final zze(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method
