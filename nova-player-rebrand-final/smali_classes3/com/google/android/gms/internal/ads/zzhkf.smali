.class final synthetic Lcom/google/android/gms/internal/ads/zzhkf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhll;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhkf;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhkf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhkf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhkf;->zza:Lcom/google/android/gms/internal/ads/zzhkf;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhkg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhkg;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhke;->zza:Lcom/google/android/gms/internal/ads/zzhke;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhjg;

    const-class v3, Lcom/google/android/gms/internal/ads/zzhjo;

    const-class v4, Lcom/google/android/gms/internal/ads/zzhlb;

    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzhjg;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhjh;)V

    .line 2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzhkg;->zzb(Lcom/google/android/gms/internal/ads/zzhji;)V

    return-object v0
.end method
