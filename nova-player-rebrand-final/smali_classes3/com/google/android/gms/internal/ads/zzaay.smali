.class final synthetic Lcom/google/android/gms/internal/ads/zzaay;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdr;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzaay;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaay;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaay;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaay;->zza:Lcom/google/android/gms/internal/ads/zzaay;

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
    check-cast p1, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
