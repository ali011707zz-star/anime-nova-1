.class final synthetic Lcom/google/android/gms/internal/ads/zzcip;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzafa;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzcip;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcip;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcip;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcip;->zza:Lcom/google/android/gms/internal/ads/zzcip;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza()[Lcom/google/android/gms/internal/ads/zzaeu;
    .locals 4

    sget v0, Lcom/google/android/gms/internal/ads/zzcit;->$r8$clinit:I

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzakw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzakw;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzajh;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzajh;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzaeu;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v2
.end method

.method public synthetic zzb(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzaeu;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzafa$-CC;->$default$zzb(Lcom/google/android/gms/internal/ads/zzafa;Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzaeu;

    move-result-object p1

    return-object p1
.end method
