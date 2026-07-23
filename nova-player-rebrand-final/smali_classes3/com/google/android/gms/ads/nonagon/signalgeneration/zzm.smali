.class final synthetic Lcom/google/android/gms/ads/nonagon/signalgeneration/zzm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzo;

.field private final synthetic zzb:Lcom/google/android/gms/ads/AdRequest;

.field private final synthetic zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzo;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzm;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzo;

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzm;->zzb:Lcom/google/android/gms/ads/AdRequest;

    iput-object p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzm;->zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzm;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzo;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzm;->zzb:Lcom/google/android/gms/ads/AdRequest;

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzm;->zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzo;->zzg(Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
