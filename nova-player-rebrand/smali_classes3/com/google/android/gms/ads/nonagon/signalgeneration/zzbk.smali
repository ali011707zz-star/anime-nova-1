.class final synthetic Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbl;

.field private final synthetic zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbl;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbl;

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbl;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbl;->zza(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;)V

    return-void
.end method
