.class final synthetic Lcom/google/android/gms/internal/ads/zzciq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzafa;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzciq;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzciq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzciq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzciq;->zza:Lcom/google/android/gms/internal/ads/zzciq;

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
    .locals 9

    sget v0, Lcom/google/android/gms/internal/ads/zzcit;->$r8$clinit:I

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzakw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzakw;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzajh;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzajh;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzako;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzamd;->zza:Lcom/google/android/gms/internal/ads/zzamd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguf;->zzi()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v4, 0x20

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzako;-><init>(Lcom/google/android/gms/internal/ads/zzamd;ILcom/google/android/gms/internal/ads/zzfg;Lcom/google/android/gms/internal/ads/zzalc;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzagh;)V

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/google/android/gms/internal/ads/zzaeu;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    return-object v3
.end method

.method public synthetic zzb(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzaeu;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzafa$-CC;->$default$zzb(Lcom/google/android/gms/internal/ads/zzafa;Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzaeu;

    move-result-object p1

    return-object p1
.end method
