.class public final Lcom/google/android/gms/ads/internal/client/zzez;
.super Lcom/google/android/gms/ads/internal/client/zzdi;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzdi;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzez;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzez;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zze()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzez;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzez;->zzb:Ljava/lang/String;

    return-object v0
.end method
