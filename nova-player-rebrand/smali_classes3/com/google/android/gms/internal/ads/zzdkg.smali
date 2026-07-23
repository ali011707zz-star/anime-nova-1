.class final synthetic Lcom/google/android/gms/internal/ads/zzdkg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdhc;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzdkg;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdkg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdkg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdkg;->zza:Lcom/google/android/gms/internal/ads/zzdkg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p1, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;->onVideoStart()V

    return-void
.end method
