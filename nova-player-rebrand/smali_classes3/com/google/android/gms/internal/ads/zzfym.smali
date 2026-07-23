.class public abstract Lcom/google/android/gms/internal/ads/zzfym;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzfyk;

.field private static volatile zzb:Lcom/google/android/gms/internal/ads/zzfyk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfyl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfyl;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfym;->zza:Lcom/google/android/gms/internal/ads/zzfyk;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfym;->zzb:Lcom/google/android/gms/internal/ads/zzfyk;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzfyk;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfym;->zzb:Lcom/google/android/gms/internal/ads/zzfyk;

    return-object v0
.end method
