.class public final Lcom/google/android/gms/internal/ads/zzcbq;
.super Lcom/google/android/gms/internal/ads/zzcav;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcav;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbq;->zza:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcbq;->zzb:I

    return-void
.end method


# virtual methods
.method public final zze()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbq;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzf()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcbq;->zzb:I

    return v0
.end method
