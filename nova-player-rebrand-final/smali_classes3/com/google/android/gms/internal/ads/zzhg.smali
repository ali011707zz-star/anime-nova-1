.class public final Lcom/google/android/gms/internal/ads/zzhg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzha;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzha;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhi;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhg;->zza:Landroid/content/Context;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhg;->zzb:Lcom/google/android/gms/internal/ads/zzha;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Lcom/google/android/gms/internal/ads/zzhb;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhg;->zzb:Lcom/google/android/gms/internal/ads/zzha;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhg;->zza:Landroid/content/Context;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzha;->zza()Lcom/google/android/gms/internal/ads/zzhb;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzhh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzhb;)V

    return-object v0
.end method
