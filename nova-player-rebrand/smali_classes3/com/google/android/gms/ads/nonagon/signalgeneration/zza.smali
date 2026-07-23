.class final synthetic Lcom/google/android/gms/ads/nonagon/signalgeneration/zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;

.field private final synthetic zzd:Lcom/google/android/gms/internal/ads/zzcdh;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;Ljava/lang/String;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;Lcom/google/android/gms/internal/ads/zzcdh;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zza;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zza;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zza;->zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;

    iput-object p4, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zza;->zzd:Lcom/google/android/gms/internal/ads/zzcdh;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zza;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zza;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zza;->zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;

    iget-object v3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zza;->zzd:Lcom/google/android/gms/internal/ads/zzcdh;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzd(Ljava/lang/String;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;Lcom/google/android/gms/internal/ads/zzcdh;)V

    return-void
.end method
