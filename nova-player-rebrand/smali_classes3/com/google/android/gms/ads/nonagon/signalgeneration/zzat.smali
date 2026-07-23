.class final synthetic Lcom/google/android/gms/ads/nonagon/signalgeneration/zzat;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcdh;

.field private final synthetic zzc:I

.field private final synthetic zzd:Landroid/os/Bundle;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;Lcom/google/android/gms/internal/ads/zzcdh;ILandroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzat;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzat;->zzb:Lcom/google/android/gms/internal/ads/zzcdh;

    iput p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzat;->zzc:I

    iput-object p4, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzat;->zzd:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzat;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzat;->zzb:Lcom/google/android/gms/internal/ads/zzcdh;

    iget v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzat;->zzc:I

    iget-object v3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzat;->zzd:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zzn(Lcom/google/android/gms/internal/ads/zzcdh;ILandroid/os/Bundle;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;

    move-result-object v0

    return-object v0
.end method
