.class final synthetic Lcom/google/android/gms/internal/ads/zzvc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzvf;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzvc;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzvc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzvc;->zza:Lcom/google/android/gms/internal/ads/zzvc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzun;

    sget v0, Lcom/google/android/gms/internal/ads/zzvg;->$r8$clinit:I

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzun;->zza:Ljava/lang/String;

    const-string v0, "OMX.google"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const-string v0, "c2.android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    const-string v0, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    return v2

    :cond_2
    return v1
.end method
