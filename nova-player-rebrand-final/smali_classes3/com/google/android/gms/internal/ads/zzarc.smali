.class final Lcom/google/android/gms/internal/ads/zzarc;
.super Lcom/google/android/gms/internal/ads/zzard;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:[B


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzard;-><init>(Ljava/security/cert/X509Certificate;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzarc;->zza:[B

    return-void
.end method


# virtual methods
.method public final getEncoded()[B
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarc;->zza:[B

    return-object v0
.end method
