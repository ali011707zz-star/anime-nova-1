.class public final Lcom/google/android/gms/internal/consent_sdk/zzmx;
.super Lcom/google/android/gms/internal/consent_sdk/zzqm;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzrr;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/consent_sdk/zzmx;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/Object;

.field private zzg:I

.field private zzh:I

.field private zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzmx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/consent_sdk/zzmx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzmx;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzmx;

    const-class v1, Lcom/google/android/gms/internal/consent_sdk/zzmx;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzz(Ljava/lang/Class;Lcom/google/android/gms/internal/consent_sdk/zzqm;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzmx;->zze:I

    return-void
.end method

.method static bridge synthetic zza()Lcom/google/android/gms/internal/consent_sdk/zzmx;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzmx;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzmx;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-ne p1, p3, :cond_0

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/consent_sdk/zzmx;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzmx;

    return-object p1

    .line 4
    :cond_0
    throw p2

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzmf;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzmf;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzmw;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzmx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/consent_sdk/zzmx;-><init>()V

    return-object p1

    .line 1
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzoq;->zza()Lcom/google/android/gms/internal/consent_sdk/zzqp;

    move-result-object p1

    const/16 v3, 0xd

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "zzf"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "zze"

    aput-object v4, v3, p2

    const-string p2, "zzd"

    aput-object p2, v3, v2

    const-string p2, "zzg"

    aput-object p2, v3, v1

    const-string p2, "zzh"

    aput-object p2, v3, v0

    aput-object p1, v3, p3

    const-string p1, "zzi"

    const/4 p2, 0x6

    aput-object p1, v3, p2

    sget-object p1, Lcom/google/android/gms/internal/consent_sdk/zzmp;->zza:Lcom/google/android/gms/internal/consent_sdk/zzqp;

    const/4 p2, 0x7

    aput-object p1, v3, p2

    const-class p1, Lcom/google/android/gms/internal/consent_sdk/zzmi;

    const/16 p2, 0x8

    aput-object p1, v3, p2

    const-class p1, Lcom/google/android/gms/internal/consent_sdk/zzml;

    const/16 p2, 0x9

    aput-object p1, v3, p2

    const-class p1, Lcom/google/android/gms/internal/consent_sdk/zzmv;

    const/16 p2, 0xa

    aput-object p1, v3, p2

    const-class p1, Lcom/google/android/gms/internal/consent_sdk/zzmo;

    const/16 p2, 0xb

    aput-object p1, v3, p2

    const-class p1, Lcom/google/android/gms/internal/consent_sdk/zzms;

    const/16 p2, 0xc

    aput-object p1, v3, p2

    sget-object p1, Lcom/google/android/gms/internal/consent_sdk/zzmx;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzmx;

    const-string p2, "\u0004\u0008\u0001\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u180c\u0001\u0003\u180c\u0002\u0004<\u0000\u0005<\u0000\u0006<\u0000\u0007<\u0000\u0008<\u0000"

    .line 2
    invoke-static {p1, p2, v3}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzw(Lcom/google/android/gms/internal/consent_sdk/zzrq;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
