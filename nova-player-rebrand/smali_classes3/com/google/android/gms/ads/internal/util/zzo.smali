.class final synthetic Lcom/google/android/gms/ads/internal/util/zzo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Landroid/net/Uri;


# direct methods
.method synthetic constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzo;->zza:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfyn;

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzo;->zza:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzV(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
