.class public final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikg;


# instance fields
.field private final zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzay;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzay;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbd;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzay;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzay;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbd;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbd;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzay;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbd;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzay;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzay;->zze()Lcom/google/android/gms/internal/ads/zzcdh;

    move-result-object v0

    return-object v0
.end method
