.class public abstract Lcom/google/android/gms/internal/ads/zzfsh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzfsi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfsi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfsh;->zza:Lcom/google/android/gms/internal/ads/zzfsi;

    return-void
.end method

.method public static zza(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfsh;->zza:Lcom/google/android/gms/internal/ads/zzfsi;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfsi;->zzb(Landroid/content/Context;)V

    return-void
.end method

.method public static zzb()Z
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfsh;->zza:Lcom/google/android/gms/internal/ads/zzfsi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfsi;->zza()Z

    move-result v0

    return v0
.end method
