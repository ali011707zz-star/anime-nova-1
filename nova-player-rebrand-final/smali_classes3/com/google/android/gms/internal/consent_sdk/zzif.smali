.class public final Lcom/google/android/gms/internal/consent_sdk/zzif;
.super Lcom/google/android/gms/internal/consent_sdk/zzqm;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzrr;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/consent_sdk/zzif;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/Object;

.field private zzg:J

.field private zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzif;

    invoke-direct {v0}, Lcom/google/android/gms/internal/consent_sdk/zzif;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzif;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzif;

    const-class v1, Lcom/google/android/gms/internal/consent_sdk/zzif;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzz(Ljava/lang/Class;Lcom/google/android/gms/internal/consent_sdk/zzqm;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzif;->zze:I

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/consent_sdk/zzid;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzif;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzp()Lcom/google/android/gms/internal/consent_sdk/zzqj;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzid;

    return-object v0
.end method

.method static bridge synthetic zzc()Lcom/google/android/gms/internal/consent_sdk/zzif;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzif;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzif;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/consent_sdk/zzif;Lcom/google/android/gms/internal/consent_sdk/zzhc;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzif;->zzf:Ljava/lang/Object;

    const/16 p1, 0x26

    iput p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzif;->zze:I

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/consent_sdk/zzif;J)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzif;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzif;->zzd:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzif;->zzg:J

    return-void
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

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
    sget-object p1, Lcom/google/android/gms/internal/consent_sdk/zzif;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzif;

    return-object p1

    .line 4
    :cond_0
    throw p2

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzid;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzid;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzie;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzif;

    invoke-direct {p1}, Lcom/google/android/gms/internal/consent_sdk/zzif;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x1c

    .line 1
    new-array p1, p1, [Ljava/lang/Object;

    const-string v3, "zzf"

    const/4 v4, 0x0

    aput-object v3, p1, v4

    const-string v3, "zze"

    aput-object v3, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, v2

    const-class p2, Lcom/google/android/gms/internal/consent_sdk/zzla;

    aput-object p2, p1, v1

    const-string p2, "zzg"

    aput-object p2, p1, v0

    const-class p2, Lcom/google/android/gms/internal/consent_sdk/zzlz;

    aput-object p2, p1, p3

    const-class p2, Lcom/google/android/gms/internal/consent_sdk/zziw;

    const/4 p3, 0x6

    aput-object p2, p1, p3

    const-class p2, Lcom/google/android/gms/internal/consent_sdk/zzfa;

    const/4 p3, 0x7

    aput-object p2, p1, p3

    const-class p2, Lcom/google/android/gms/internal/consent_sdk/zzkc;

    const/16 p3, 0x8

    aput-object p2, p1, p3

    const-class p2, Lcom/google/android/gms/internal/consent_sdk/zzfo;

    const/16 p3, 0x9

    aput-object p2, p1, p3

    const-class p2, Lcom/google/android/gms/internal/consent_sdk/zzic;

    const/16 p3, 0xa

    aput-object p2, p1, p3

    const-class p2, Lcom/google/android/gms/internal/consent_sdk/zzfh;

    const/16 p3, 0xb

    aput-object p2, p1, p3

    const-class p2, Lcom/google/android/gms/internal/consent_sdk/zzgg;

    const/16 p3, 0xc

    aput-object p2, p1, p3

    const-class p2, Lcom/google/android/gms/internal/consent_sdk/zzjf;

    const/16 p3, 0xd

    aput-object p2, p1, p3

    const-class p2, Lcom/google/android/gms/internal/consent_sdk/zzjo;

    const/16 p3, 0xe

    aput-object p2, p1, p3

    const-class p2, Lcom/google/android/gms/internal/consent_sdk/zznp;

    const/16 p3, 0xf

    aput-object p2, p1, p3

    const-class p2, Lcom/google/android/gms/internal/consent_sdk/zzlo;

    const/16 p3, 0x10

    aput-object p2, p1, p3

    const-class p2, Lcom/google/android/gms/internal/consent_sdk/zzok;

    const/16 p3, 0x11

    aput-object p2, p1, p3

    const-string p2, "zzh"

    const/16 p3, 0x12

    aput-object p2, p1, p3

    const-class p2, Lcom/google/android/gms/internal/consent_sdk/zzoh;

    const/16 p3, 0x13

    aput-object p2, p1, p3

    const-class p2, Lcom/google/android/gms/internal/consent_sdk/zzme;

    const/16 p3, 0x14

    aput-object p2, p1, p3

    const-class p2, Lcom/google/android/gms/internal/consent_sdk/zzgr;

    const/16 p3, 0x15

    aput-object p2, p1, p3

    const-class p2, Lcom/google/android/gms/internal/consent_sdk/zznb;

    const/16 p3, 0x16

    aput-object p2, p1, p3

    const-class p2, Lcom/google/android/gms/internal/consent_sdk/zzmx;

    const/16 p3, 0x17

    aput-object p2, p1, p3

    const-class p2, Lcom/google/android/gms/internal/consent_sdk/zzfr;

    const/16 p3, 0x18

    aput-object p2, p1, p3

    const-class p2, Lcom/google/android/gms/internal/consent_sdk/zzoo;

    const/16 p3, 0x19

    aput-object p2, p1, p3

    const-class p2, Lcom/google/android/gms/internal/consent_sdk/zznu;

    const/16 p3, 0x1a

    aput-object p2, p1, p3

    const-class p2, Lcom/google/android/gms/internal/consent_sdk/zzhc;

    const/16 p3, 0x1b

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/consent_sdk/zzif;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzif;

    const-string p3, "\u0004\u0019\u0001\u0001\u0008&\u0019\u0000\u0000\u0000\u0008<\u0000\t\u1002\u0000\u000b<\u0000\u000c<\u0000\r<\u0000\u000f<\u0000\u0011<\u0000\u0012<\u0000\u0013<\u0000\u0014<\u0000\u0015<\u0000\u0016<\u0000\u0019<\u0000\u001a<\u0000\u001b<\u0000\u001d\u1004\u0001\u001e<\u0000\u001f<\u0000 <\u0000!<\u0000\"<\u0000#<\u0000$<\u0000%<\u0000&<\u0000"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzw(Lcom/google/android/gms/internal/consent_sdk/zzrq;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
