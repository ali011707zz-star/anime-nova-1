.class public abstract Lcom/facebook/ads/redexgen/X/5C;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/common/util/Util$Api21;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:I

.field public static final A03:Ljava/lang/String;

.field public static final A04:Ljava/lang/String;

.field public static final A05:Ljava/lang/String;

.field public static final A06:Ljava/lang/String;

.field public static final A07:[B

.field public static final A08:Ljava/util/regex/Pattern;

.field public static final A09:Ljava/util/regex/Pattern;

.field public static final A0A:Ljava/util/regex/Pattern;

.field public static final A0B:Ljava/util/regex/Pattern;

.field public static final A0C:[I

.field public static final A0D:[I

.field public static final A0E:[Ljava/lang/String;

.field public static final A0F:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 91

    .line 363
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "0jhNC1Lyu0lVYVQP"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "8o531PEVmArnbRMxdetuA21oKPXOiLv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tOAQF6Pzc2RVYks8fQT2p1g882rTPCd1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "wz1og"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "CbSxkJOpnDO18KCthbWuHDege0bytfRM"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "NVorx5pvNTEUlNt2QwU2VxD5ww57Xut2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "eRRRkvRnvdqMQMmsSxWecKvTVYNexEDg"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "GD5J9oYLAsqrZf6ewUEjnT79ojUC6XcO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5C;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5C;->A0v()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    .line 364
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/facebook/ads/redexgen/X/5C;->A03:Ljava/lang/String;

    .line 365
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/facebook/ads/redexgen/X/5C;->A05:Ljava/lang/String;

    .line 366
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/facebook/ads/redexgen/X/5C;->A06:Ljava/lang/String;

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/5C;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xa6

    const/4 v1, 0x2

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/5C;->A06:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/5C;->A05:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v0, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5C;->A04:Ljava/lang/String;

    .line 368
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/facebook/ads/redexgen/X/5C;->A07:[B

    .line 369
    const/16 v2, 0x44

    const/16 v1, 0x5f

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5C;->A0A:Ljava/util/regex/Pattern;

    .line 370
    const/16 v2, 0x140

    const/16 v1, 0x54

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5C;->A0B:Ljava/util/regex/Pattern;

    .line 371
    const/16 v2, 0x10

    const/16 v1, 0x11

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5C;->A08:Ljava/util/regex/Pattern;

    .line 372
    const/16 v2, 0x21

    const/16 v1, 0x23

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x2

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5C;->A09:Ljava/util/regex/Pattern;

    .line 373
    const/16 v2, 0x2e0

    const/4 v1, 0x3

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v89

    const/16 v2, 0x3e8

    const/4 v1, 0x6

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v90

    const/16 v2, 0x19a

    const/4 v1, 0x3

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x36d

    const/4 v1, 0x2

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x237

    const/4 v1, 0x3

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x2e3

    const/4 v1, 0x2

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0x23a

    const/4 v1, 0x3

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x282

    const/4 v1, 0x2

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v8

    const/16 v2, 0x244

    const/4 v1, 0x3

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v9

    const/16 v2, 0x32e

    const/4 v1, 0x2

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v10

    const/16 v2, 0x39d

    const/4 v1, 0x3

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v11

    const/16 v2, 0x23d

    const/4 v1, 0x2

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v12

    const/16 v2, 0x247

    const/4 v1, 0x3

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v13

    const/16 v2, 0x3ca

    const/4 v1, 0x2

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v14

    const/16 v2, 0x271

    const/4 v1, 0x3

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v15

    const/16 v2, 0x26d

    const/4 v1, 0x2

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v16

    const/16 v2, 0x27d

    const/4 v1, 0x3

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v17

    const/16 v2, 0x335

    const/4 v1, 0x2

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v18

    const/16 v2, 0x2b5

    const/4 v1, 0x3

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v19

    const/16 v2, 0x274

    const/4 v1, 0x2

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v20

    const/16 v2, 0x2bb

    const/4 v1, 0x3

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v21

    const/16 v2, 0x280

    const/4 v1, 0x2

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v22

    const/16 v2, 0x2af

    const/4 v1, 0x3

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v23

    const/16 v2, 0x2ad

    const/4 v1, 0x2

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v24

    const/16 v2, 0x2b2

    const/4 v1, 0x3

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v25

    const/16 v2, 0x30e

    const/4 v1, 0x2

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v26

    const/16 v2, 0x2f7

    const/4 v1, 0x3

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v27

    const/16 v2, 0x301

    const/4 v1, 0x2

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v28

    const/16 v2, 0x316

    const/4 v1, 0x3

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v29

    const/16 v2, 0x321

    const/4 v1, 0x2

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v30

    const/16 v2, 0x319

    const/4 v1, 0x3

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v31

    const/16 v2, 0x31f

    const/4 v1, 0x2

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v32

    const/16 v2, 0x31c

    const/4 v1, 0x3

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v33

    const/16 v2, 0x326

    const/4 v1, 0x2

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v34

    const/16 v2, 0x359

    const/4 v1, 0x3

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v35

    const/16 v2, 0x284

    const/4 v1, 0x2

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v36

    const/16 v2, 0x362

    const/4 v1, 0x3

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v37

    const/16 v2, 0x35c

    const/4 v1, 0x2

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v38

    const/16 v2, 0x365

    const/4 v1, 0x3

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v39

    const/16 v2, 0x2cf

    const/4 v1, 0x7

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v40

    const/16 v2, 0x36a

    const/4 v1, 0x3

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v41

    const/16 v2, 0x368

    const/4 v1, 0x2

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v42

    const/16 v2, 0x3be

    const/4 v1, 0x3

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v43

    const/16 v2, 0x26f

    const/4 v1, 0x2

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v44

    const/16 v2, 0x2fa

    const/4 v1, 0x2

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v45

    const/16 v2, 0x328

    const/4 v1, 0x6

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v46

    const/16 v2, 0x30a

    const/4 v1, 0x2

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v47

    const/16 v2, 0x2d6

    const/4 v1, 0x2

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v48

    const/16 v2, 0x2d8

    const/4 v1, 0x3

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v49

    const/16 v2, 0x2d6

    const/4 v1, 0x2

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v50

    const/16 v2, 0x30c

    const/4 v1, 0x2

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v51

    const/16 v2, 0x3c8

    const/4 v1, 0x2

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v52

    const/16 v2, 0x234

    const/4 v1, 0x3

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v53

    const/16 v2, 0x22e

    const/4 v1, 0x6

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v54

    const/16 v2, 0x2fc

    const/4 v1, 0x2

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v55

    const/16 v2, 0x328

    const/4 v1, 0x6

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v56

    const/16 v2, 0x2fe

    const/4 v1, 0x3

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v57

    const/16 v2, 0x328

    const/4 v1, 0x6

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v58

    const/16 v2, 0x333

    const/4 v1, 0x2

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v59

    const/16 v2, 0x348

    const/4 v1, 0x6

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v60

    const/16 v2, 0x354

    const/4 v1, 0x3

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v61

    const/16 v2, 0x348

    const/4 v1, 0x6

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v62

    const/16 v2, 0x337

    const/4 v1, 0x2

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v63

    const/16 v2, 0x342

    const/4 v1, 0x6

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v64

    const/16 v2, 0x339

    const/4 v1, 0x3

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v65

    const/16 v2, 0x342

    const/4 v1, 0x6

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v66

    const/16 v2, 0x3a0

    const/4 v1, 0x2

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v67

    const/16 v2, 0x194

    const/4 v1, 0x6

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v68

    const/16 v2, 0x3a2

    const/4 v1, 0x3

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v69

    const/16 v2, 0x194

    const/4 v1, 0x6

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v70

    const/16 v2, 0x242

    const/4 v1, 0x2

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v71

    const/16 v2, 0x2c1

    const/4 v1, 0x7

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v72

    const/16 v2, 0x23f

    const/4 v1, 0x3

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v73

    const/16 v2, 0x2c1

    const/4 v1, 0x7

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v74

    const/16 v2, 0x2db

    const/4 v1, 0x2

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v75

    const/16 v2, 0x2c8

    const/4 v1, 0x7

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v76

    const/16 v2, 0x2dd

    const/4 v1, 0x3

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v77

    const/16 v2, 0x2c8

    const/4 v1, 0x7

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v78

    const/16 v2, 0x37c

    const/4 v1, 0x2

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v79

    const/16 v2, 0x2cf

    const/4 v1, 0x7

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v80

    const/16 v2, 0x37e

    const/4 v1, 0x3

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v81

    const/16 v2, 0x2cf

    const/4 v1, 0x7

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v82

    const/16 v2, 0x24a

    const/4 v1, 0x3

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v83

    const/16 v2, 0x3cc

    const/4 v1, 0x6

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v84

    const/16 v2, 0x2be

    const/4 v1, 0x3

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v85

    const/16 v2, 0x3da

    const/4 v1, 0x6

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v86

    const/16 v2, 0x330

    const/4 v1, 0x3

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v87

    const/16 v2, 0x3f8

    const/4 v1, 0x6

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v88

    filled-new-array/range {v3 .. v90}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5C;->A0E:[Ljava/lang/String;

    .line 374
    const/16 v2, 0x3fe

    const/16 v1, 0x8

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v19

    const/16 v2, 0x3e8

    const/4 v1, 0x6

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v20

    const/16 v2, 0x2ea

    const/4 v1, 0x5

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x310

    const/4 v1, 0x2

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x2e5

    const/4 v1, 0x5

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x3da

    const/4 v1, 0x6

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0x2ef

    const/16 v1, 0x8

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x357

    const/4 v1, 0x2

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v8

    const/16 v2, 0x33c

    const/4 v1, 0x6

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v9

    const/16 v2, 0x348

    const/4 v1, 0x6

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v10

    const/16 v2, 0x34e

    const/4 v1, 0x6

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v11

    const/16 v2, 0x342

    const/4 v1, 0x6

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v12

    const/16 v2, 0x3d2

    const/16 v1, 0x8

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v13

    const/16 v2, 0x3cc

    const/4 v1, 0x6

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v14

    const/16 v2, 0x3e0

    const/16 v1, 0x8

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v15

    const/16 v2, 0x3da

    const/4 v1, 0x6

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v16

    const/16 v2, 0x3ee

    const/16 v1, 0xa

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v17

    const/16 v2, 0x3f8

    const/4 v1, 0x6

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v18

    filled-new-array/range {v3 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5C;->A0F:[Ljava/lang/String;

    .line 375
    const/16 v1, 0x100

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5C;->A0C:[I

    .line 376
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/ads/redexgen/X/5C;->A0D:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x4c11db7
        0x9823b6e
        0xd4326d9
        0x130476dc
        0x17c56b6b
        0x1a864db2
        0x1e475005
        0x2608edb8
        0x22c9f00f
        0x2f8ad6d6
        0x2b4bcb61
        0x350c9b64
        0x31cd86d3
        0x3c8ea00a
        0x384fbdbd
        0x4c11db70    # 3.8235584E7f
        0x48d0c6c7
        0x4593e01e
        0x4152fda9
        0x5f15adac
        0x5bd4b01b
        0x569796c2
        0x52568b75
        0x6a1936c8
        0x6ed82b7f
        0x639b0da6
        0x675a1011
        0x791d4014
        0x7ddc5da3
        0x709f7b7a
        0x745e66cd
        -0x67dc4920
        -0x631d54a9    # -1.4999716E-21f
        -0x6e5e7272
        -0x6a9f6fc7
        -0x74d83fc4
        -0x70192275
        -0x7d5a04ae
        -0x799b191b
        -0x41d4a4a8
        -0x4515b911
        -0x48569fca
        -0x4c97827f
        -0x52d0d27c
        -0x5611cfcd
        -0x5b52e916
        -0x5f93f4a3    # -1.9993737E-19f
        -0x2bcd9270
        -0x2f0c8fd9
        -0x224fa902
        -0x268eb4b7
        -0x38c9e4b4
        -0x3c08f905
        -0x314bdfde
        -0x358ac26b
        -0xdc57fd8
        -0x9046261
        -0x44744ba
        -0x86590f
        -0x1ec1090c
        -0x1a0014bd
        -0x17433266
        -0x13822fd3
        0x34867077
        0x30476dc0
        0x3d044b19
        0x39c556ae
        0x278206ab
        0x23431b1c
        0x2e003dc5
        0x2ac12072
        0x128e9dcf    # 9.000363E-28f
        0x164f8078
        0x1b0ca6a1
        0x1fcdbb16
        0x18aeb13
        0x54bf6a4
        0x808d07d
        0xcc9cdca
        0x7897ab07
        0x7c56b6b0
        0x71159069
        0x75d48dde
        0x6b93dddb
        0x6f52c06c
        0x6211e6b5
        0x66d0fb02
        0x5e9f46bf
        0x5a5e5b08
        0x571d7dd1
        0x53dc6066
        0x4d9b3063    # 3.2545494E8f
        0x495a2dd4    # 893661.25f
        0x44190b0d
        0x40d816ba
        -0x535a3969
        -0x579b24e0
        -0x5ad80207
        -0x5e191fb2
        -0x405e4fb5
        -0x449f5204
        -0x49dc74db
        -0x4d1d696e
        -0x7552d4d1
        -0x7193c968
        -0x7cd0efbf
        -0x7811f20a
        -0x6656a20d
        -0x6297bfbc
        -0x6fd49963
        -0x6b1584d6
        -0x1f4be219
        -0x1b8affb0
        -0x16c9d977
        -0x1208c4c2
        -0xc4f94c5
        -0x88e8974
        -0x5cdafab
        -0x10cb21e
        -0x39430fa1
        -0x3d821218
        -0x30c134cf
        -0x3400297a
        -0x2a47797d
        -0x2e8664cc
        -0x23c54213
        -0x27045fa6
        0x690ce0ee
        0x6dcdfd59
        0x608edb80
        0x644fc637
        0x7a089632
        0x7ec98b85
        0x738aad5c
        0x774bb0eb
        0x4f040d56
        0x4bc510e1    # 2.5829826E7f
        0x46863638
        0x42472b8f
        0x5c007b8a
        0x58c1663d
        0x558240e4
        0x51435d53
        0x251d3b9e
        0x21dc2629
        0x2c9f00f0
        0x285e1d47
        0x36194d42
        0x32d850f5
        0x3f9b762c
        0x3b5a6b9b
        0x315d626
        0x7d4cb91
        0xa97ed48
        0xe56f0ff
        0x1011a0fa
        0x14d0bd4d
        0x19939b94
        0x1d528623
        -0xed0a9f2
        -0xa11b447
        -0x75292a0
        -0x3938f29
        -0x1dd4df2e
        -0x1915c29b
        -0x1456e444
        -0x1097f9f5
        -0x28d8444a
        -0x2c1959ff
        -0x215a7f28
        -0x259b6291
        -0x3bdc3296
        -0x3f1d2f23
        -0x325e09fc
        -0x369f144d
        -0x42c17282
        -0x46006f37
        -0x4b4349f0
        -0x4f825459
        -0x51c5045e
        -0x550419eb
        -0x58473f34
        -0x5c862285
        -0x64c99f3a
        -0x6008828f
        -0x6d4ba458
        -0x698ab9e1
        -0x77cde9e6
        -0x730cf453
        -0x7e4fd28c
        -0x7a8ecf3d
        0x5d8a9099
        0x594b8d2e
        0x5408abf7
        0x50c9b640
        0x4e8ee645
        0x4a4ffbf2    # 3407612.5f
        0x470cdd2b
        0x43cdc09c
        0x7b827d21
        0x7f436096
        0x7200464f
        0x76c15bf8
        0x68860bfd
        0x6c47164a
        0x61043093
        0x65c52d24
        0x119b4be9
        0x155a565e
        0x18197087
        0x1cd86d30
        0x29f3d35
        0x65e2082
        0xb1d065b
        0xfdc1bec
        0x3793a651
        0x3352bbe6
        0x3e119d3f
        0x3ad08088
        0x2497d08d
        0x2056cd3a
        0x2d15ebe3
        0x29d4f654
        -0x3a56d987
        -0x3e97c432
        -0x33d4e2e9    # -4.4856412E7f
        -0x3715ff60    # -479237.0f
        -0x2952af5b
        -0x2d93b2ee
        -0x20d09435
        -0x24118984
        -0x1c5e343f
        -0x189f298a
        -0x15dc0f51
        -0x111d12e8
        -0xf5a42e3
        -0xb9b5f56
        -0x6d8798d
        -0x219643c
        -0x764702f7
        -0x72861f42    # -7.6999573E-31f
        -0x7fc53999
        -0x7b042430
        -0x6543742b
        -0x6182699e
        -0x6cc14f45
        -0x680052f4
        -0x504fef4f
        -0x548ef2fa
        -0x59cdd421
        -0x5d0cc998
        -0x434b9993
        -0x478a8426
        -0x4ac9a2fd
        -0x4e08bf4c
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x7
        0xe
        0x9
        0x1c
        0x1b
        0x12
        0x15
        0x38
        0x3f
        0x36
        0x31
        0x24
        0x23
        0x2a
        0x2d
        0x70
        0x77
        0x7e
        0x79
        0x6c
        0x6b
        0x62
        0x65
        0x48
        0x4f
        0x46
        0x41
        0x54
        0x53
        0x5a
        0x5d
        0xe0
        0xe7
        0xee
        0xe9
        0xfc
        0xfb
        0xf2
        0xf5
        0xd8
        0xdf
        0xd6
        0xd1
        0xc4
        0xc3
        0xca
        0xcd
        0x90
        0x97
        0x9e
        0x99
        0x8c
        0x8b
        0x82
        0x85
        0xa8
        0xaf
        0xa6
        0xa1
        0xb4
        0xb3
        0xba
        0xbd
        0xc7
        0xc0
        0xc9
        0xce
        0xdb
        0xdc
        0xd5
        0xd2
        0xff
        0xf8
        0xf1
        0xf6
        0xe3
        0xe4
        0xed
        0xea
        0xb7
        0xb0
        0xb9
        0xbe
        0xab
        0xac
        0xa5
        0xa2
        0x8f
        0x88
        0x81
        0x86
        0x93
        0x94
        0x9d
        0x9a
        0x27
        0x20
        0x29
        0x2e
        0x3b
        0x3c
        0x35
        0x32
        0x1f
        0x18
        0x11
        0x16
        0x3
        0x4
        0xd
        0xa
        0x57
        0x50
        0x59
        0x5e
        0x4b
        0x4c
        0x45
        0x42
        0x6f
        0x68
        0x61
        0x66
        0x73
        0x74
        0x7d
        0x7a
        0x89
        0x8e
        0x87
        0x80
        0x95
        0x92
        0x9b
        0x9c
        0xb1
        0xb6
        0xbf
        0xb8
        0xad
        0xaa
        0xa3
        0xa4
        0xf9
        0xfe
        0xf7
        0xf0
        0xe5
        0xe2
        0xeb
        0xec
        0xc1
        0xc6
        0xcf
        0xc8
        0xdd
        0xda
        0xd3
        0xd4
        0x69
        0x6e
        0x67
        0x60
        0x75
        0x72
        0x7b
        0x7c
        0x51
        0x56
        0x5f
        0x58
        0x4d
        0x4a
        0x43
        0x44
        0x19
        0x1e
        0x17
        0x10
        0x5
        0x2
        0xb
        0xc
        0x21
        0x26
        0x2f
        0x28
        0x3d
        0x3a
        0x33
        0x34
        0x4e
        0x49
        0x40
        0x47
        0x52
        0x55
        0x5c
        0x5b
        0x76
        0x71
        0x78
        0x7f
        0x6a
        0x6d
        0x64
        0x63
        0x3e
        0x39
        0x30
        0x37
        0x22
        0x25
        0x2c
        0x2b
        0x6
        0x1
        0x8
        0xf
        0x1a
        0x1d
        0x14
        0x13
        0xae
        0xa9
        0xa0
        0xa7
        0xb2
        0xb5
        0xbc
        0xbb
        0x96
        0x91
        0x98
        0x9f
        0x8a
        0x8d
        0x84
        0x83
        0xde
        0xd9
        0xd0
        0xd7
        0xc2
        0xc5
        0xcc
        0xcb
        0xe6
        0xe1
        0xe8
        0xef
        0xfa
        0xfd
        0xf4
        0xf3
    .end array-data
.end method

.method public static A00(FFF)F
    .locals 0

    .line 13726
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static A01(I)I
    .locals 4

    .line 13727
    const/4 v3, 0x0

    packed-switch p0, :pswitch_data_0

    .line 13728
    :pswitch_0
    return v3

    .line 13729
    :pswitch_1
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x20

    if-lt v1, v0, :cond_0

    .line 13730
    const v3, 0xb58fc

    .line 13731
    :cond_0
    return v3

    .line 13732
    :pswitch_2
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x17

    const/16 v2, 0x18fc

    if-lt v1, v0, :cond_1

    .line 13733
    return v2

    .line 13734
    :cond_1
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_2

    .line 13735
    return v2

    .line 13736
    :cond_2
    return v3

    .line 13737
    :pswitch_3
    const/16 v0, 0x4fc

    return v0

    .line 13738
    :pswitch_4
    const/16 v0, 0xfc

    return v0

    .line 13739
    :pswitch_5
    const/16 v0, 0xdc

    return v0

    .line 13740
    :pswitch_6
    const/16 v3, 0xcc

    sget-object v2, Lcom/facebook/ads/redexgen/X/5C;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/5C;->A01:[Ljava/lang/String;

    const-string v1, "qx6Bj"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    .line 13741
    :pswitch_7
    const/16 v0, 0x1c

    return v0

    .line 13742
    :pswitch_8
    const/16 v0, 0xc

    return v0

    .line 13743
    :pswitch_9
    const/4 v0, 0x4

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static A02(I)I
    .locals 3

    .line 13744
    packed-switch p0, :pswitch_data_0

    .line 13745
    :pswitch_0
    const/16 p0, 0x1776

    sget-object v2, Lcom/facebook/ads/redexgen/X/5C;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/5C;->A01:[Ljava/lang/String;

    const-string v1, "jxwDVk5Xin8Qw09ydBb2VsJiyiTp54vB"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "SYToZK6HQezNburr1bp2e1PUtswsXJGu"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 13746
    :pswitch_1
    const/16 v0, 0x1772

    return v0

    .line 13747
    :pswitch_2
    const/16 v0, 0x1774

    return v0

    .line 13748
    :pswitch_3
    const/16 v0, 0x1773

    return v0

    .line 13749
    :pswitch_4
    const/16 v0, 0x1775

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static A03(I)I
    .locals 0

    .line 13750
    sparse-switch p0, :sswitch_data_0

    .line 13751
    const/4 p0, 0x0

    return p0

    .line 13752
    :sswitch_0
    const/high16 p0, 0x30000000

    return p0

    .line 13753
    :sswitch_1
    const/high16 p0, 0x20000000

    return p0

    .line 13754
    :sswitch_2
    const/4 p0, 0x2

    return p0

    .line 13755
    :sswitch_3
    const/4 p0, 0x3

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_3
        0x10 -> :sswitch_2
        0x18 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static A04(I)I
    .locals 3

    .line 13756
    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_0

    .line 13757
    :pswitch_0
    return v0

    .line 13758
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 13759
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 13760
    :pswitch_3
    const/4 v0, 0x5

    return v0

    .line 13761
    :pswitch_4
    const/4 v0, 0x4

    return v0

    .line 13762
    :pswitch_5
    const/16 p0, 0x8

    sget-object v2, Lcom/facebook/ads/redexgen/X/5C;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/5C;->A01:[Ljava/lang/String;

    const-string v1, "Xwv9tgmCDWWECZ2rTxC05riy18CzxfIS"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "vJ1JY8dVYpQ7RvuZirsFVuB4oK25CZB"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 13763
    :pswitch_6
    const/4 v0, 0x0

    return v0

    .line 13764
    :pswitch_7
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method

.method public static A05(II)I
    .locals 0

    .line 13765
    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    div-int/2addr p0, p1

    return p0
.end method

.method public static A06(II)I
    .locals 0

    .line 13766
    sparse-switch p0, :sswitch_data_0

    .line 13767
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 13768
    :sswitch_0
    mul-int/lit8 p0, p1, 0x3

    return p0

    .line 13769
    :sswitch_1
    mul-int/lit8 p0, p1, 0x4

    return p0

    .line 13770
    :sswitch_2
    return p1

    .line 13771
    :sswitch_3
    mul-int/lit8 p0, p1, 0x2

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0x10000000 -> :sswitch_3
        0x20000000 -> :sswitch_0
        0x30000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public static A07(III)I
    .locals 0

    .line 13772
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static A08(JJ)I
    .locals 1

    .line 13773
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p0, p2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static A09(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 2

    .line 13774
    sget v0, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 13775
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v0, v1, :cond_1

    .line 13776
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 13777
    :cond_1
    const/4 v0, 0x5

    return v0
.end method

.method public static A0A(Landroid/net/Uri;)I
    .locals 6

    .line 13778
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 13779
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v3, :cond_0

    const/16 v2, 0x35e

    const/4 v1, 0x4

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/k7;->A03(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13780
    const/4 v0, 0x3

    return v0

    .line 13781
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 13782
    .local v1, "lastPathSegment":Ljava/lang/String;
    const/4 v3, 0x4

    if-nez v5, :cond_1

    .line 13783
    return v3

    .line 13784
    :cond_1
    const/16 v0, 0x2e

    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 13785
    .local v3, "lastDotIndex":I
    if-ltz v0, :cond_3

    .line 13786
    add-int/lit8 v4, v0, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/5C;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/5C;->A01:[Ljava/lang/String;

    const-string v1, "a9wHr"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0E(Ljava/lang/String;)I

    move-result v0

    .line 13787
    .local v4, "contentType":I
    if-eq v0, v3, :cond_3

    .line 13788
    return v0

    .line 13789
    .end local v4    # "contentType":I
    :cond_3
    sget-object v1, Lcom/facebook/ads/redexgen/X/5C;->A09:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 13790
    .local v4, "ismMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13791
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 13792
    .local v5, "extensions":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 13793
    const/16 v2, 0x29a

    const/16 v1, 0x13

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13794
    const/4 v0, 0x0

    return v0

    .line 13795
    :cond_4
    const/16 v2, 0x28a

    const/16 v1, 0x10

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13796
    return v4

    .line 13797
    :cond_5
    const/4 v0, 0x1

    return v0

    .line 13798
    .end local v5    # "extensions":Ljava/lang/String;
    :cond_6
    return v3
.end method

.method public static A0B(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 6

    .line 13799
    if-nez p1, :cond_0

    .line 13800
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5C;->A0A(Landroid/net/Uri;)I

    move-result v0

    return v0

    .line 13801
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 p0, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 13802
    const/4 v0, 0x4

    return v0

    .line 13803
    :sswitch_0
    const/16 v2, 0x21c

    const/16 v1, 0x12

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x1d8

    const/16 v1, 0x14

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x1ec

    const/16 v1, 0x1b

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const/16 v2, 0x207

    const/16 v1, 0x15

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 13804
    :pswitch_0
    return p0

    .line 13805
    :pswitch_1
    return v5

    .line 13806
    :pswitch_2
    return v4

    .line 13807
    :pswitch_3
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x3a5c4caa -> :sswitch_3
        -0x957ced0 -> :sswitch_2
        0x3d3887d -> :sswitch_1
        0x44d481f3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/4h;JZZ)I
    .locals 6

    .line 13808
    const/4 v5, 0x0

    .line 13809
    .local v0, "lowIndex":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4h;->A02()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .line 13810
    .local v1, "highIndex":I
    :goto_0
    if-gt v5, v3, :cond_1

    .line 13811
    add-int v0, v5, v3

    ushr-int/lit8 v4, v0, 0x1

    .line 13812
    .local v2, "midIndex":I
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/4h;->A03(I)J

    move-result-wide v1

    cmp-long v0, v1, p1

    if-gez v0, :cond_0

    .line 13813
    add-int/lit8 v5, v4, 0x1

    goto :goto_0

    .line 13814
    :cond_0
    add-int/lit8 v3, v4, -0x1

    goto :goto_0

    .line 13815
    :cond_1
    if-eqz p3, :cond_3

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4h;->A02()I

    move-result v0

    if-ge v1, v0, :cond_3

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4h;->A03(I)J

    move-result-wide v1

    cmp-long v0, v1, p1

    if-nez v0, :cond_3

    .line 13816
    add-int/lit8 v3, v3, 0x1

    .line 13817
    :cond_2
    :goto_1
    return v3

    .line 13818
    :cond_3
    if-eqz p4, :cond_2

    const/4 v0, -0x1

    if-ne v3, v0, :cond_2

    .line 13819
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static A0D(Ljava/lang/String;)I
    .locals 4

    .line 13820
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 13821
    .local v0, "length":I
    const/4 v0, 0x4

    if-gt v3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 13822
    const/4 v1, 0x0

    .line 13823
    .local v1, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 13824
    shl-int/lit8 v1, v1, 0x8

    .line 13825
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    or-int/2addr v1, v0

    .line 13826
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 13827
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 13828
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method public static A0E(Ljava/lang/String;)I
    .locals 6

    .line 13829
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/k7;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 13830
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 p0, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 13831
    const/4 v0, 0x4

    return v0

    .line 13832
    :sswitch_0
    const/16 v2, 0x312

    const/4 v1, 0x4

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x306

    const/4 v1, 0x4

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x323

    const/4 v1, 0x3

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_3
    const/16 v2, 0x303

    const/4 v1, 0x3

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 13833
    :pswitch_0
    return p0

    .line 13834
    :pswitch_1
    return v5

    .line 13835
    :pswitch_2
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x19883 -> :sswitch_3
        0x1a721 -> :sswitch_2
        0x317849 -> :sswitch_1
        0x325a49 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static A0F(Ljava/nio/ByteBuffer;I)I
    .locals 1

    .line 13836
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    .line 13837
    .local v0, "value":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_0

    :goto_0
    return p1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p1

    goto :goto_0
.end method

.method public static A0G(Ljava/util/List;Ljava/lang/Comparable;ZZ)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Comparable<",
            "-TT;>;>;TT;ZZ)I"
        }
    .end annotation

    .line 13838
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Comparable<-TT;>;>;"
    .local p0, "value":Ljava/lang/Comparable;, "TT;"
    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v3

    .line 13839
    .local v0, "index":I
    if-gez v3, :cond_1

    .line 13840
    not-int v3, v3

    .line 13841
    .end local v1
    :cond_0
    :goto_0
    if-eqz p3, :cond_4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 p0, v0, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/5C;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 13842
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 13843
    .local v1, "listSize":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    if-ge v3, v1, :cond_2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 13844
    :cond_2
    if-eqz p2, :cond_0

    .line 13845
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/5C;->A01:[Ljava/lang/String;

    const-string v1, "AVDkOIGrSYkQO6"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 13846
    :cond_4
    return v3
.end method

.method public static A0H(Ljava/util/List;Ljava/lang/Comparable;ZZ)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Comparable<",
            "-TT;>;>;TT;ZZ)I"
        }
    .end annotation

    .line 13847
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Comparable<-TT;>;>;"
    .local v3, "value":Ljava/lang/Comparable;, "TT;"
    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v3

    .line 13848
    .local v0, "index":I
    if-gez v3, :cond_2

    .line 13849
    add-int/lit8 v0, v3, 0x2

    neg-int v3, v0

    .line 13850
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    const/4 v0, 0x0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_1
    return v3

    .line 13851
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_3

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    sget-object v1, Lcom/facebook/ads/redexgen/X/5C;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/5C;->A01:[Ljava/lang/String;

    const-string v1, "7wt3cZrGAy9gNsgF7PLcTg6oSzn5VQ1a"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "U87bGfnBcGjZypJnFtFTdrSmy7sh89Q"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-interface {v4, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 13852
    :cond_3
    if-eqz p2, :cond_0

    .line 13853
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0I([BIII)I
    .locals 4

    .line 13854
    .local v0, "i":I
    :goto_0
    if-ge p1, p2, :cond_0

    .line 13855
    shl-int/lit8 v3, p3, 0x8

    sget-object v2, Lcom/facebook/ads/redexgen/X/5C;->A0C:[I

    ushr-int/lit8 v1, p3, 0x18

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    xor-int/2addr v1, v0

    and-int/lit16 v0, v1, 0xff

    aget v0, v2, v0

    xor-int p3, v3, v0

    .line 13856
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 13857
    .end local v0    # "i":I
    :cond_0
    return p3
.end method

.method public static A0J([BIII)I
    .locals 2

    .line 13858
    .local v0, "i":I
    :goto_0
    if-ge p1, p2, :cond_0

    .line 13859
    sget-object v1, Lcom/facebook/ads/redexgen/X/5C;->A0D:[I

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    xor-int/2addr v0, p3

    aget p3, v1, v0

    .line 13860
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 13861
    .end local v0    # "i":I
    :cond_0
    return p3
.end method

.method public static A0K([JJZZ)I
    .locals 4

    .line 13862
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    .line 13863
    .local v0, "index":I
    if-gez v3, :cond_2

    .line 13864
    not-int v3, v3

    .line 13865
    :cond_0
    :goto_0
    if-eqz p4, :cond_1

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_1
    return v3

    .line 13866
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    array-length v0, p0

    if-ge v3, v0, :cond_3

    aget-wide v1, p0, v3

    cmp-long v0, v1, p1

    if-nez v0, :cond_3

    goto :goto_1

    .line 13867
    :cond_3
    if-eqz p3, :cond_0

    .line 13868
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method public static A0L([JJZZ)I
    .locals 4

    .line 13869
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    .line 13870
    .local v0, "index":I
    if-gez v3, :cond_2

    .line 13871
    add-int/lit8 v0, v3, 0x2

    neg-int v3, v0

    .line 13872
    :cond_0
    :goto_0
    if-eqz p4, :cond_1

    const/4 v0, 0x0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_1
    return v3

    .line 13873
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_3

    aget-wide v1, p0, v3

    cmp-long v0, v1, p1

    if-nez v0, :cond_3

    goto :goto_1

    .line 13874
    :cond_3
    if-eqz p3, :cond_0

    .line 13875
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static A0M(I)J
    .locals 3

    .line 13876
    int-to-long v2, p0

    const-wide v0, 0xffffffffL

    and-long/2addr v2, v0

    return-wide v2
.end method

.method public static A0N(II)J
    .locals 3

    .line 13877
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5C;->A0M(I)J

    move-result-wide v2

    const/16 v0, 0x20

    shl-long/2addr v2, v0

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/5C;->A0M(I)J

    move-result-wide v0

    or-long/2addr v2, v0

    return-wide v2
.end method

.method public static A0O(J)J
    .locals 3

    .line 13878
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v1

    if-eqz v0, :cond_0

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, p0, v1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-wide p0

    :cond_1
    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    goto :goto_0
.end method

.method public static A0P(J)J
    .locals 3

    .line 13879
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v1

    if-eqz v0, :cond_0

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, p0, v1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-wide p0

    :cond_1
    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    goto :goto_0
.end method

.method public static A0Q(JF)J
    .locals 4

    .line 13880
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 13881
    return-wide p0

    .line 13882
    :cond_0
    long-to-double v2, p0

    float-to-double v0, p2

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/5C;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/5C;->A01:[Ljava/lang/String;

    const-string v1, "9GRIvgtOgBa9bXM6PfbvjJ8DWw6epVtI"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "tkq8pPym2INMgxVxZaKpNGxpJRL95Qh"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-wide v3
.end method

.method public static A0R(JF)J
    .locals 4

    .line 13883
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 13884
    return-wide p0

    .line 13885
    :cond_0
    long-to-double v2, p0

    float-to-double v0, p2

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static A0S(JJJ)J
    .locals 5

    .line 13886
    add-long v3, p0, p2

    .line 13887
    .local v0, "result":J
    xor-long/2addr p0, v3

    xor-long/2addr p2, v3

    and-long/2addr p0, p2

    const-wide/16 v1, 0x0

    cmp-long v0, p0, v1

    if-gez v0, :cond_0

    .line 13888
    return-wide p4

    .line 13889
    :cond_0
    return-wide v3
.end method

.method public static A0T(JJJ)J
    .locals 0

    .line 13890
    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static A0U(JJJ)J
    .locals 6

    .line 13891
    const-wide/16 v4, 0x0

    cmp-long v0, p4, p2

    if-ltz v0, :cond_1

    rem-long v0, p4, p2

    cmp-long v3, v0, v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/5C;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/5C;->A01:[Ljava/lang/String;

    const-string v1, "tvym1rnXFHBFa5iZecmBaZkH1F6VWGFv"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "ooOjiywY7MfdEFCffLHAs2l8GTiel20"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v3, :cond_1

    .line 13892
    div-long/2addr p4, p2

    .line 13893
    .local v0, "divisionFactor":J
    div-long/2addr p0, p4

    return-wide p0

    .line 13894
    .end local v0    # "divisionFactor":J
    :cond_1
    cmp-long v0, p4, p2

    if-gez v0, :cond_2

    rem-long v1, p2, p4

    cmp-long v0, v1, v4

    if-nez v0, :cond_2

    .line 13895
    div-long/2addr p2, p4

    .line 13896
    .local v0, "multiplicationFactor":J
    mul-long/2addr p0, p2

    return-wide p0

    .line 13897
    .end local v0    # "multiplicationFactor":J
    :cond_2
    long-to-double v4, p2

    long-to-double v0, p4

    div-double/2addr v4, v0

    .line 13898
    .local v0, "multiplicationFactor":D
    long-to-double v2, p0

    mul-double/2addr v2, v4

    double-to-long v0, v2

    return-wide v0
.end method

.method public static A0V(JJJ)J
    .locals 7

    .line 13899
    sub-long v5, p0, p2

    .line 13900
    .local v0, "result":J
    xor-long v3, p0, p2

    xor-long/2addr p0, v5

    and-long/2addr v3, p0

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    .line 13901
    return-wide p4

    .line 13902
    :cond_0
    return-wide v5
.end method

.method public static A0W(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 4

    .line 13903
    const/4 v3, 0x0

    .line 13904
    .local v0, "defaultDisplay":Landroid/view/Display;
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x11

    if-lt v1, v0, :cond_0

    .line 13905
    const/16 v2, 0x276

    const/4 v1, 0x7

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 13906
    .local v1, "displayManager":Landroid/hardware/display/DisplayManager;
    if-eqz v1, :cond_0

    .line 13907
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    .line 13908
    .end local v1    # "displayManager":Landroid/hardware/display/DisplayManager;
    :cond_0
    if-nez v3, :cond_1

    .line 13909
    const/16 v2, 0x3c1

    const/4 v1, 0x6

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 13910
    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 13911
    .end local v1    # "windowManager":Landroid/view/WindowManager;
    :cond_1
    invoke-static {p0, v3}, Lcom/facebook/ads/redexgen/X/5C;->A0X(Landroid/content/Context;Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public static A0X(Landroid/content/Context;Landroid/view/Display;)Landroid/graphics/Point;
    .locals 5

    .line 13912
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5C;->A18(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13913
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x1c

    if-ge v1, v0, :cond_0

    .line 13914
    const/16 v2, 0x381

    const/16 v1, 0x10

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 13915
    .local v0, "displaySize":Ljava/lang/String;
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 13916
    :cond_0
    const/16 v2, 0x3ab

    const/16 v1, 0x13

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 13917
    :goto_1
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x3c7

    const/4 v1, 0x1

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1O(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 13918
    .local v1, "displaySizeParts":[Ljava/lang/String;
    array-length v1, v3

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    .line 13919
    const/4 v0, 0x0

    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 13920
    .local v2, "width":I
    const/4 v0, 0x1

    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 13921
    .local v3, "height":I
    if-lez v2, :cond_1

    if-lez v1, :cond_1

    .line 13922
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13923
    :catch_0
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xe1

    const/16 v1, 0x16

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x139

    const/4 v1, 0x4

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A05(Ljava/lang/String;Ljava/lang/String;)V

    .line 13924
    :cond_2
    const/16 v2, 0x135

    const/4 v1, 0x4

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/5C;->A05:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v3, Lcom/facebook/ads/redexgen/X/5C;->A06:Ljava/lang/String;

    .line 13925
    const/16 v2, 0xaa

    const/4 v1, 0x6

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13926
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v2, 0x24d

    const/16 v1, 0x20

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13927
    const/16 v2, 0xf00

    const/16 v1, 0x870

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 13928
    .end local v0    # "displaySize":Ljava/lang/String;
    :cond_3
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 13929
    .local v0, "displaySize":Landroid/graphics/Point;
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_4

    .line 13930
    invoke-static {p1, v2}, Lcom/facebook/ads/redexgen/X/5C;->A0z(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 13931
    :goto_2
    return-object v2

    .line 13932
    :cond_4
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x11

    if-lt v1, v0, :cond_5

    .line 13933
    invoke-static {p1, v2}, Lcom/facebook/ads/redexgen/X/5C;->A0y(Landroid/view/Display;Landroid/graphics/Point;)V

    goto :goto_2

    .line 13934
    :cond_5
    invoke-static {p1, v2}, Lcom/facebook/ads/redexgen/X/5C;->A0x(Landroid/view/Display;Landroid/graphics/Point;)V

    goto :goto_2
.end method

.method public static A0Y()Landroid/os/Handler;
    .locals 1

    .line 13935
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0a(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static A0Z()Landroid/os/Handler;
    .locals 1

    .line 13936
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0b(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static A0a(Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .locals 1

    .line 13937
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/5C;->A0c(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static A0b(Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .locals 1

    .line 13938
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5C;->A0d()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/5C;->A0c(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static A0c(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .locals 1

    .line 13939
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-object v0
.end method

.method public static A0d()Landroid/os/Looper;
    .locals 1

    .line 13940
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 13941
    .local v0, "myLooper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method

.method public static A0e(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 1

    .line 13942
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt v0, p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0
.end method

.method public static A0f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    .line 13943
    .local p0, "value":Ljava/lang/Object;, "TT;"
    return-object p0
.end method

.method public static A0g(I)Ljava/lang/String;
    .locals 2

    .line 13944
    packed-switch p0, :pswitch_data_0

    .line 13945
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 13946
    :pswitch_0
    const/16 p0, 0x13d

    const/4 v1, 0x3

    const/16 v0, 0x25

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 13947
    :pswitch_1
    const/16 p0, 0xf9

    const/16 v1, 0x17

    const/16 v0, 0x73

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 13948
    :pswitch_2
    const/16 p0, 0x110

    const/16 v1, 0x12

    const/16 v0, 0x4a

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 13949
    :pswitch_3
    const/16 p0, 0x122

    const/16 v1, 0x13

    const/16 v0, 0x73

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 13950
    :pswitch_4
    const/16 p0, 0xf7

    const/4 v1, 0x2

    const/16 v0, 0x40

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A0h(I)Ljava/lang/String;
    .locals 1

    .line 13951
    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A0i(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/5C;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0j(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 13952
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 13953
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 13954
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object p0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 13955
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .local v0, "versionName":Ljava/lang/String;
    goto :goto_0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13956
    .end local v0    # "versionName":Ljava/lang/String;
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_0
    const/16 v2, 0xa9

    const/4 v1, 0x1

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object p0

    .line 13957
    .local v0, "versionName":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xa8

    const/4 v1, 0x1

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x10

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xa3

    const/4 v1, 0x2

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xb0

    const/16 v1, 0x12

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A0k(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 13958
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13959
    .local v0, "e":Ljava/util/MissingResourceException;
    :catch_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/k7;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A0l(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 13960
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 13961
    .local v0, "length":I
    const/4 v9, 0x0

    .line 13962
    .local v1, "percentCharacterCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_1

    .line 13963
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x25

    if-ne v1, v0, :cond_0

    .line 13964
    add-int/lit8 v9, v9, 0x1

    .line 13965
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13966
    .end local v2    # "i":I
    :cond_1
    if-nez v9, :cond_2

    .line 13967
    return-object p0

    .line 13968
    :cond_2
    mul-int/lit8 v0, v9, 0x2

    sub-int v5, v6, v0

    .line 13969
    .local v2, "expectedLength":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 13970
    .local v3, "builder":Ljava/lang/StringBuilder;
    sget-object v0, Lcom/facebook/ads/redexgen/X/5C;->A08:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 13971
    .local v4, "matcher":Ljava/util/regex/Matcher;
    const/4 v7, 0x0

    .line 13972
    .local v5, "startOfNotEscaped":I
    :goto_1
    if-lez v9, :cond_4

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13973
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v0, 0x10

    invoke-static {v1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    sget-object v1, Lcom/facebook/ads/redexgen/X/5C;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/5C;->A01:[Ljava/lang/String;

    const-string v1, "PqPC6PEskzx9UdoEWhWT1LElayhySamU"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "px5MwBeS5rIOQRTPGFWWURcMVY777XUi"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    int-to-char v1, v8

    .line 13974
    .local v6, "unescapedCharacter":C
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-virtual {v4, p0, v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13975
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    .line 13976
    .end local v6    # "unescapedCharacter":C
    add-int/lit8 v9, v9, -0x1

    .line 13977
    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 13978
    :cond_4
    if-ge v7, v6, :cond_5

    .line 13979
    invoke-virtual {v4, p0, v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 13980
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eq v0, v5, :cond_6

    .line 13981
    const/4 v0, 0x0

    return-object v0

    .line 13982
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A0m(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 13983
    :try_start_0
    const/16 v2, 0x1bd

    const/16 v1, 0x1b

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 13984
    .local v0, "systemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v2, 0x2b8

    const/4 v1, 0x3

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v3, v2

    invoke-virtual {v5, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 13985
    .local v1, "getMethod":Ljava/lang/reflect/Method;
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-virtual {v1, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13986
    .end local v0    # "systemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "getMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    .line 13987
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xc2

    const/16 v1, 0x1f

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x139

    const/4 v1, 0x4

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/4g;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13988
    const/4 v0, 0x0

    return-object v0
.end method

.method public static varargs A0n(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 13989
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A0o(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 13990
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5C;->A0p(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static A0p(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 13991
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static A0q([B)Ljava/lang/String;
    .locals 2

    .line 13992
    sget-object v1, Lcom/facebook/ads/redexgen/X/k9;->A05:Ljava/nio/charset/Charset;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static A0r([BII)Ljava/lang/String;
    .locals 2

    .line 13993
    sget-object v1, Lcom/facebook/ads/redexgen/X/k9;->A05:Ljava/nio/charset/Charset;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static A0s([Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    .line 13994
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 13995
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v1, "i":I
    :goto_0
    array-length v0, p0

    if-ge v4, v0, :cond_2

    .line 13996
    aget-object v0, p0, v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13997
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ge v4, v0, :cond_0

    .line 13998
    const/16 v6, 0xa6

    const/4 v3, 0x2

    sget-object v2, Lcom/facebook/ads/redexgen/X/5C;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/5C;->A01:[Ljava/lang/String;

    const-string v1, "5BfmCuqMgNYZqTYtdlZRTWg2c"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/16 v0, 0x6f

    invoke-static {v6, v3, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13999
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 14000
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic A0t(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 14001
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static A0u(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 14002
    new-instance v0, Lcom/facebook/ads/redexgen/X/5A;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/5A;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static A0v()V
    .locals 1

    const/16 v0, 0x406

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5C;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x64t
        -0x5ct
        -0x38t
        -0x1bt
        -0x16t
        -0xft
        -0xct
        -0x49t
        -0x43t
        -0x16t
        -0x20t
        -0x12t
        -0x15t
        -0x1bt
        -0x20t
        -0x64t
        -0x3at
        -0x37t
        -0x4t
        -0x1et
        -0x32t
        -0x19t
        0x2t
        -0x32t
        0x7t
        -0x2ft
        -0x32t
        -0x26t
        -0x2t
        0x1ct
        -0x2dt
        0x1et
        -0x36t
        0x1et
        0x35t
        0x30t
        0x24t
        0x20t
        0x52t
        0x24t
        0x1ft
        0x35t
        0x5ft
        0x69t
        0x63t
        0x62t
        0x35t
        0x1et
        0x35t
        0x30t
        0x25t
        0x1et
        0x63t
        0x57t
        0x64t
        0x5ft
        0x5ct
        0x5bt
        0x69t
        0x6at
        0x1et
        0x24t
        0x20t
        0x1ft
        0x1ft
        0x35t
        0x1ft
        0x35t
        0x1ft
        0x53t
        0x5bt
        0x53t
        0x5bt
        0x53t
        0x5bt
        0x53t
        0x5bt
        0x20t
        0x53t
        0x24t
        0x1ft
        0x53t
        0x5bt
        0x53t
        0x5bt
        0x20t
        0x53t
        0x24t
        0x1ft
        0x53t
        0x5bt
        0x53t
        0x5bt
        0x20t
        0x52t
        0x4bt
        0x6bt
        0x54t
        0x1ft
        0x53t
        0x5bt
        0x53t
        0x5bt
        0x20t
        0x31t
        0x1ft
        0x53t
        0x5bt
        0x53t
        0x5bt
        0x20t
        0x31t
        0x1ft
        0x53t
        0x5bt
        0x53t
        0x5bt
        0x20t
        0x1ft
        0x52t
        0x53t
        0x25t
        0x23t
        0x54t
        0x1ft
        0x53t
        0x5bt
        0x22t
        0x20t
        0x20t
        0x36t
        0x1ft
        0x52t
        0x51t
        0x71t
        0x54t
        0x73t
        0x1ft
        0x1ft
        0x53t
        0x22t
        0x73t
        0x53t
        0x24t
        0x20t
        0x1ft
        0x53t
        0x5bt
        0x36t
        0x53t
        0x5bt
        0x20t
        0x31t
        0x36t
        0x1ft
        0x53t
        0x5bt
        0x53t
        0x5bt
        0x20t
        0x20t
        0x20t
        0x36t
        -0x53t
        -0x5ct
        -0x2et
        0x17t
        0xbt
        -0x2ft
        -0x13t
        -0x22t
        -0x12t
        -0x23t
        -0xet
        -0x1bt
        -0x23t
        -0x3t
        0x30t
        0x27t
        0x8t
        0x24t
        0x19t
        0x31t
        0x1dt
        0x2at
        0x4t
        0x21t
        0x1at
        -0x19t
        -0x16t
        -0x1at
        -0x10t
        -0x1at
        -0x17t
        0x1bt
        0x36t
        0x3et
        0x41t
        0x3at
        0x39t
        -0xbt
        0x49t
        0x44t
        -0xbt
        0x47t
        0x3at
        0x36t
        0x39t
        -0xbt
        0x48t
        0x4et
        0x48t
        0x49t
        0x3at
        0x42t
        -0xbt
        0x45t
        0x47t
        0x44t
        0x45t
        0x3at
        0x47t
        0x49t
        0x4et
        -0xbt
        0x2dt
        0x52t
        0x5at
        0x45t
        0x50t
        0x4dt
        0x48t
        0x4t
        0x48t
        0x4dt
        0x57t
        0x54t
        0x50t
        0x45t
        0x5dt
        0x4t
        0x57t
        0x4dt
        0x5et
        0x49t
        0x1et
        0x4t
        0xat
        0xbt
        0x3dt
        0x3et
        0x4et
        0x34t
        0x47t
        0x32t
        0x34t
        0x34t
        0x33t
        0x42t
        0x4et
        0x32t
        0x30t
        0x3ft
        0x30t
        0x31t
        0x38t
        0x3bt
        0x38t
        0x43t
        0x38t
        0x34t
        0x42t
        0x14t
        0x15t
        0x25t
        0x1bt
        0x14t
        0x19t
        0x1bt
        0x16t
        0x16t
        0x15t
        0x18t
        0x1at
        0xbt
        0xat
        0x25t
        0xat
        0x18t
        0x13t
        0x3dt
        0x3et
        0x4et
        0x44t
        0x3dt
        0x42t
        0x44t
        0x3ft
        0x3ft
        0x3et
        0x41t
        0x43t
        0x34t
        0x33t
        0x4et
        0x43t
        0x48t
        0x3ft
        0x34t
        -0x2ft
        -0x13t
        -0x14t
        -0x9t
        0x3et
        0x5dt
        0x52t
        0x55t
        -0x6t
        -0x1at
        -0xct
        0x3at
        0x4t
        0x9t
        0x5t
        0x1bt
        0x2ct
        0x4t
        0x4t
        0x37t
        0xct
        0x9t
        0x15t
        0x39t
        0x6t
        0x5t
        0x35t
        0x5t
        0x1bt
        0x4t
        0x4t
        0x37t
        0xct
        0x9t
        0x15t
        0x39t
        0x6t
        0x5t
        0x29t
        0x5t
        0x1bt
        0x4t
        0x4t
        0x37t
        0xct
        0x9t
        0x15t
        0x39t
        0x6t
        0x5t
        0x20t
        0x5t
        0x1bt
        0x4t
        0x30t
        0x4t
        0x4t
        0x37t
        0xct
        0x9t
        0x15t
        0x39t
        0x6t
        0x5t
        0x24t
        0x5t
        0x1bt
        0x4t
        0x4t
        0x37t
        0xct
        0x9t
        0x15t
        0x39t
        0x6t
        0x5t
        0x29t
        0x5t
        0x1bt
        0x4t
        0x4t
        0x37t
        0xct
        0x9t
        0x15t
        0xat
        0x39t
        0x6t
        0x5t
        0x2ft
        0x5t
        0x1bt
        0x5t
        0x1bt
        0x0t
        0x5at
        0x64t
        0x26t
        0x6dt
        0x70t
        0x62t
        0x4bt
        0x56t
        0x4ct
        -0x4t
        0x9t
        -0x1t
        0xdt
        0xat
        0x4t
        -0x1t
        -0x37t
        0x3t
        -0x4t
        0xdt
        -0x1t
        0x12t
        -0x4t
        0xdt
        0x0t
        -0x37t
        0xft
        0x14t
        0xbt
        0x0t
        -0x37t
        -0x4t
        0x10t
        0xft
        0xat
        0x8t
        0xat
        0xft
        0x4t
        0x11t
        0x0t
        0x5t
        0x12t
        0x8t
        0x16t
        0x13t
        0xdt
        0x8t
        -0x2et
        0x13t
        0x17t
        -0x2et
        -0x9t
        0x1dt
        0x17t
        0x18t
        0x9t
        0x11t
        -0xct
        0x16t
        0x13t
        0x14t
        0x9t
        0x16t
        0x18t
        0xdt
        0x9t
        0x17t
        0x40t
        0x4ft
        0x4ft
        0x4bt
        0x48t
        0x42t
        0x40t
        0x53t
        0x48t
        0x4et
        0x4dt
        0xet
        0x43t
        0x40t
        0x52t
        0x47t
        0xat
        0x57t
        0x4ct
        0x4bt
        0x22t
        0x31t
        0x31t
        0x2dt
        0x2at
        0x24t
        0x22t
        0x35t
        0x2at
        0x30t
        0x2ft
        -0x10t
        0x37t
        0x2ft
        0x25t
        -0x11t
        0x2et
        0x34t
        -0x12t
        0x34t
        0x34t
        0x35t
        0x33t
        -0x14t
        0x39t
        0x2et
        0x2dt
        -0x17t
        -0x8t
        -0x8t
        -0xct
        -0xft
        -0x15t
        -0x17t
        -0x4t
        -0xft
        -0x9t
        -0xat
        -0x49t
        0x0t
        -0x4bt
        -0xbt
        -0x8t
        -0x13t
        -0x11t
        -0x23t
        -0x26t
        -0x2ct
        0x42t
        0x51t
        0x51t
        0x4dt
        0x4at
        0x44t
        0x42t
        0x55t
        0x4at
        0x50t
        0x4ft
        0x10t
        0x59t
        0xet
        0x53t
        0x55t
        0x54t
        0x51t
        0x39t
        0x4at
        0x5t
        0x39t
        0x4at
        0x3at
        0x18t
        0x29t
        0x19t
        0xbt
        0x1ct
        0x17t
        0x31t
        0x30t
        0x40t
        0x36t
        0x43t
        0x51t
        0x5et
        0x62t
        0xft
        0x20t
        -0x15t
        -0x2t
        -0x5t
        -0x9t
        -0x4t
        -0x3t
        0x20t
        0x2at
        0x2bt
        0x27t
        0x33t
        0x31t
        -0xet
        0x37t
        0x33t
        0x32t
        0x3dt
        -0xet
        0x28t
        0x38t
        0x3at
        -0xet
        0x2ct
        0x25t
        0x36t
        0x28t
        0x3bt
        0x25t
        0x36t
        0x29t
        -0xet
        0x34t
        0x25t
        0x32t
        0x29t
        0x30t
        -0xet
        0x35t
        0x2at
        0x2ct
        0x28t
        0x33t
        0x43t
        -0x15t
        0x1t
        0x16t
        0x2dt
        0x18t
        0x4bt
        0x4ct
        0x45t
        0x4at
        0x54t
        0x51t
        0x4dt
        0x42t
        0x5at
        0x48t
        0x59t
        0x58t
        0x19t
        0x20t
        -0xet
        0x2t
        -0x11t
        -0x16t
        0xat
        0xdt
        0x10t
        0x9t
        0x4ct
        0x55t
        0x58t
        0x53t
        0x47t
        0x5at
        0x23t
        0x53t
        0x19t
        0x5bt
        0x1et
        0x13t
        0x47t
        0x47t
        0x56t
        0x52t
        0xat
        0x13t
        0x16t
        0x11t
        0x5t
        0x18t
        -0x1ft
        0x11t
        0x14t
        0x8t
        -0x2ft
        0x18t
        0xdt
        0x11t
        0x9t
        -0x2ft
        0x7t
        0x17t
        0xat
        -0x1et
        -0x12t
        0x7t
        0x13t
        0x6t
        0x1ft
        0x1dt
        0x27t
        0x1at
        0x18t
        0x25t
        0xct
        0xat
        0x19t
        0x3et
        0x49t
        0x3ct
        0x3at
        0x33t
        0x3dt
        0x4ct
        0x46t
        0x57t
        0x11t
        0x46t
        0x53t
        0x57t
        -0x1t
        -0x7t
        0xat
        -0x3ct
        -0x1t
        0x9t
        0xdt
        -0x1t
        -0x7t
        0xat
        -0x3ct
        0xat
        0x9t
        0x7t
        0x3ft
        0x3ct
        0x12t
        0xft
        0xct
        0x5dt
        0x67t
        0x3ft
        0x49t
        0x4dt
        0x55t
        0x60t
        0x5bt
        0x1dt
        0x2et
        0x4ct
        0x10t
        0x4bt
        0x44t
        0x4et
        0x19t
        -0x23t
        0x1ct
        0x25t
        0x28t
        -0x5t
        -0x41t
        0x0t
        -0xdt
        0x8t
        -0xdt
        -0x4t
        0x1t
        -0x1t
        -0x7t
        -0x5t
        -0x5t
        -0xat
        0x55t
        0x5at
        0x1bt
        0x20t
        0x16t
        0x41t
        0x4bt
        0x20t
        0x2at
        0x24t
        0x4at
        0x54t
        0x4et
        0x4dt
        0x4dt
        0x5bt
        0x4ct
        0x4bt
        0x3bt
        0x31t
        0x21t
        0x17t
        0x46t
        0xct
        0x4et
        0x11t
        0x48t
        0x3ct
        0x3et
        0xbt
        -0x1t
        0xdt
        0x0t
        -0xct
        0xct
        0x11t
        0xdt
        0x24t
        0x22t
        -0x9t
        -0x6t
        -0x12t
        0x36t
        0x3ct
        0x13t
        0x19t
        -0x2dt
        0xft
        0x14t
        0xat
        0x4ct
        0x58t
        0x3at
        0x2dt
        0x3at
        -0x16t
        -0x22t
        0x57t
        0x55t
        0x55t
        0x55t
        0x41t
        0x41t
        0x42t
        -0xat
        -0x9t
        -0x4bt
        -0x16t
        -0x9t
        -0xdt
        -0x15t
        -0x14t
        -0x56t
        -0x15t
        -0x15t
        -0x14t
        0x3ft
        0x40t
        -0x2t
        0x3ft
        0x40t
        0x33t
        0x66t
        0x67t
        0x25t
        0x66t
        0x71t
        0x66t
        0x22t
        0x23t
        0x16t
        -0x16t
        -0xet
        0x5bt
        0x50t
        0x5dt
        0xdt
        0xat
        0x2ct
        0x2et
        0x2dt
        0x2at
        0x50t
        0x53t
        0x4bt
        0xet
        -0x2t
        -0x2t
        0x9t
        0x1t
        0x8t
        0x1t
        0x4t
        0x66t
        0x64t
        0x7t
        0x5t
        0x0t
        -0x3t
        0x8t
        -0x7t
        -0xdt
        0x1t
        -0xbt
        0x7t
        0x8t
        -0x7t
        0x6t
        0x39t
        0x38t
        0x9t
        0x8t
        0x6t
        0x3et
        0x44t
        0x3et
        -0x7t
        0x2ft
        0x34t
        0x3et
        0x3bt
        0x37t
        0x2ct
        0x44t
        -0x8t
        0x3et
        0x34t
        0x45t
        0x30t
        0x36t
        0x24t
        0x2et
        0x21t
        0x30t
        0x23t
        0x2ft
        0x27t
        -0x1et
        -0x1t
        -0x1et
        0x1t
        0x9t
        -0x2t
        -0x9t
        0x2dt
        0x30t
        0x16t
        0x19t
        0xbt
        -0xdt
        -0x19t
        -0x15t
        -0x13t
        -0x1et
        -0x1dt
        0xdt
        -0x4t
        0x5t
        -0x5t
        0x6t
        0x9t
        -0x3bt
        -0x5t
        0x0t
        0xat
        0x7t
        0x3t
        -0x8t
        0x10t
        -0x3ct
        0xat
        0x0t
        0x11t
        -0x4t
        0x12t
        0x0t
        0x7t
        0x55t
        0x47t
        0x4ct
        0x42t
        0x4dt
        0x55t
        0x62t
        0x6bt
        0x5bt
        -0x2t
        -0x14t
        0x1ft
        0xdt
        -0x2et
        0x8t
        0x12t
        0x13t
        0x50t
        0x3et
        0x3t
        0x3dt
        0x4bt
        0x45t
        0x4ft
        0x4bt
        0x13t
        0x1t
        -0x3at
        0x1t
        -0x6t
        0x4t
        0x25t
        0x13t
        -0x28t
        0x13t
        0xct
        0x16t
        0x16t
        0xct
        0x29t
        0x17t
        -0x24t
        0x17t
        0x22t
        0x1dt
        -0x9t
        -0x1bt
        -0x56t
        -0x16t
        -0x1at
        -0x15t
        -0x56t
        -0x15t
        -0x22t
        -0x15t
        0x60t
        0x4et
        0x13t
        0x54t
        0x47t
        0x54t
        0x3et
        0x2ct
        -0xft
        0x3ct
        0x2dt
        0x25t
        0x32t
        0x2bt
    .end array-data
.end method

.method public static A0w(Landroid/os/Parcel;Z)V
    .locals 0

    .line 14003
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14004
    return-void
.end method

.method public static A0x(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 0

    .line 14005
    invoke-virtual {p0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 14006
    return-void
.end method

.method public static A0y(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 0

    .line 14007
    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 14008
    return-void
.end method

.method public static A0z(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 1

    .line 14009
    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object p0

    .line 14010
    .local v0, "mode":Landroid/view/Display$Mode;
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 14011
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 14012
    return-void
.end method

.method public static A10(Ljava/io/Closeable;)V
    .locals 0

    .line 14013
    if-eqz p0, :cond_0

    .line 14014
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14015
    :catch_0
    :cond_0
    return-void
.end method

.method public static A11(Ljava/lang/Throwable;)V
    .locals 0

    .line 14016
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5C;->A12(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static A12(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 14017
    throw p0
.end method

.method public static A13([JJJ)V
    .locals 7

    .line 14018
    const-wide/16 v3, 0x0

    cmp-long v0, p3, p1

    if-ltz v0, :cond_0

    rem-long v1, p3, p1

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    .line 14019
    div-long/2addr p3, p1

    .line 14020
    .local v0, "divisionFactor":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v0, p0

    if-ge v2, v0, :cond_3

    .line 14021
    aget-wide v0, p0, v2

    div-long/2addr v0, p3

    aput-wide v0, p0, v2

    .line 14022
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14023
    :cond_0
    cmp-long v0, p3, p1

    if-gez v0, :cond_1

    rem-long v1, p1, p3

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    .line 14024
    div-long/2addr p1, p3

    .line 14025
    .local v0, "multiplicationFactor":J
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v0, p0

    if-ge v2, v0, :cond_3

    .line 14026
    aget-wide v0, p0, v2

    mul-long/2addr v0, p1

    aput-wide v0, p0, v2

    .line 14027
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 14028
    :cond_1
    long-to-double v2, p1

    long-to-double v0, p3

    div-double/2addr v2, v0

    .line 14029
    .local v0, "multiplicationFactor":D
    const/4 v6, 0x0

    .restart local v2    # "i":I
    :goto_2
    array-length v5, p0

    sget-object v4, Lcom/facebook/ads/redexgen/X/5C;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v4, v0

    const/4 v0, 0x5

    aget-object v4, v4, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v4, Lcom/facebook/ads/redexgen/X/5C;->A01:[Ljava/lang/String;

    const-string v1, "BjGW37zAqxCLsW2nWmt2hw1kAHbIQbLh"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const-string v1, "BHp6YnoeM2z0KYM9Il82lktneq2CMX6s"

    const/4 v0, 0x5

    aput-object v1, v4, v0

    if-ge v6, v5, :cond_3

    .line 14030
    aget-wide v0, p0, v6

    long-to-double v4, v0

    mul-double/2addr v4, v2

    double-to-long v0, v4

    aput-wide v0, p0, v6

    .line 14031
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 14032
    .end local v0    # "multiplicationFactor":D
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method public static A14(I)Z
    .locals 1

    .line 14033
    const/high16 v0, 0x20000000

    if-eq p0, v0, :cond_0

    const/high16 v0, 0x30000000

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A15(I)Z
    .locals 4

    .line 14034
    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/high16 v3, 0x10000000

    sget-object v2, Lcom/facebook/ads/redexgen/X/5C;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/5C;->A01:[Ljava/lang/String;

    const-string v1, "sEVRoy0udJ8XOlLumIW6NYr3k1TbE2j9"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "fWOu24VM8azkAehbfbWIlWwimjJiblYr"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_1

    const/high16 v0, 0x20000000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x30000000

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A16(I)Z
    .locals 1

    .line 14035
    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A17(Landroid/content/Context;)Z
    .locals 3

    .line 14036
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_0

    .line 14037
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v2, 0x19d

    const/16 v1, 0x20

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 14038
    :goto_0
    return v0

    .line 14039
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A18(Landroid/content/Context;)Z
    .locals 3

    .line 14040
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/16 v2, 0x3a5

    const/4 v1, 0x6

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 14041
    .local v0, "uiModeManager":Landroid/app/UiModeManager;
    if-eqz v0, :cond_0

    .line 14042
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v1

    const/4 v0, 0x4

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    .line 14043
    :goto_0
    return v0

    .line 14044
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A19(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 5

    .line 14045
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    .line 14046
    const/16 v2, 0x36f

    const/16 v1, 0xd

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x391

    const/16 v1, 0xc

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3, v0, v4}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v3

    .line 14047
    .local v0, "count":J
    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A1A(Landroid/net/Uri;)Z
    .locals 3

    .line 14048
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    .line 14049
    .local v0, "scheme":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v2, 0x286

    const/4 v1, 0x4

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A1B(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    .locals 2

    .line 14050
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 14051
    .local v0, "looper":Landroid/os/Looper;
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14052
    const/4 v0, 0x0

    return v0

    .line 14053
    :cond_0
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne v1, v0, :cond_1

    .line 14054
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 14055
    const/4 v0, 0x1

    return v0

    .line 14056
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public static A1C(Landroid/os/Parcel;)Z
    .locals 0

    .line 14057
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static A1D(Lcom/facebook/ads/redexgen/X/4v;Lcom/facebook/ads/redexgen/X/4v;Ljava/util/zip/Inflater;)Z
    .locals 4

    .line 14058
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    const/4 v3, 0x0

    if-gtz v0, :cond_0

    .line 14059
    return v3

    .line 14060
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A08()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 14061
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0c(I)V

    .line 14062
    :cond_1
    if-nez p2, :cond_2

    .line 14063
    new-instance p2, Ljava/util/zip/Inflater;

    invoke-direct {p2}, Ljava/util/zip/Inflater;-><init>()V

    .line 14064
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    invoke-virtual {p2, v2, v1, v0}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 14065
    const/4 v2, 0x0

    .line 14066
    :cond_3
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A08()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p2, v1, v2, v0}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    add-int/2addr v2, v0

    .line 14067
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14068
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0e(I)V

    goto :goto_1

    .line 14069
    :cond_4
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 14070
    :cond_5
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A08()I

    move-result v0

    if-ne v2, v0, :cond_3

    .line 14071
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A08()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0c(I)V

    goto :goto_0
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14072
    :goto_1
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->reset()V

    .line 14073
    const/4 v0, 0x1

    return v0

    .line 14074
    :cond_6
    :goto_2
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->reset()V

    .line 14075
    return v3

    .line 14076
    .end local v0
    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Ljava/util/zip/Inflater;->reset()V

    .line 14077
    throw v0

    .line 14078
    .local v0, "e":Ljava/util/zip/DataFormatException;
    :catch_0
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->reset()V

    .line 14079
    return v3
.end method

.method public static A1E(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 14080
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0
.end method

.method public static A1F(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14081
    const/16 v0, 0x1000

    new-array v3, v0, [B

    .line 14082
    .local v0, "buffer":[B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 14083
    .local v1, "outputStream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v3, "bytesRead":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 14084
    const/4 v0, 0x0

    invoke-virtual {v2, v3, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 14085
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static A1G(Ljava/lang/String;)[B
    .locals 1

    .line 14086
    sget-object v0, Lcom/facebook/ads/redexgen/X/k9;->A05:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static A1H([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    .line 14087
    .local p0, "value":[Ljava/lang/Object;, "[TT;"
    return-object p0
.end method

.method public static A1I([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 14088
    .local p0, "input":[Ljava/lang/Object;, "[TT;"
    array-length v0, p0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 14089
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 14090
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A1J([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .line 14091
    .local p1, "input":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x1

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 14092
    array-length v0, p0

    if-gt p2, v0, :cond_0

    :goto_1
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 14093
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 14094
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 14095
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A1K([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .line 14096
    .local p0, "first":[Ljava/lang/Object;, "[TT;"
    .local p1, "second":[Ljava/lang/Object;, "[TT;"
    array-length v1, p0

    array-length v0, p1

    add-int/2addr v1, v0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 14097
    .local v0, "concatenation":[Ljava/lang/Object;, "[TT;"
    array-length v2, p0

    array-length v1, p1

    const/4 v0, 0x0

    invoke-static {p1, v0, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14098
    return-object v3
.end method

.method public static A1L()[Ljava/lang/String;
    .locals 3

    .line 14099
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5C;->A1M()[Ljava/lang/String;

    move-result-object v2

    .line 14100
    .local v0, "systemLocales":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    .line 14101
    aget-object v0, v2, v1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 14102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14103
    .end local v1    # "i":I
    :cond_0
    return-object v2
.end method

.method public static A1M()[Ljava/lang/String;
    .locals 4

    .line 14104
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 14105
    .local v0, "config":Landroid/content/res/Configuration;
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x18

    if-lt v1, v0, :cond_0

    .line 14106
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/5C;->A1N(Landroid/content/res/Configuration;)[Ljava/lang/String;

    move-result-object v2

    .line 14107
    :goto_0
    return-object v2

    .line 14108
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    iget-object v0, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0o(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    aput-object v1, v2, v0

    goto :goto_0
.end method

.method public static A1N(Landroid/content/res/Configuration;)[Ljava/lang/String;
    .locals 3

    .line 14109
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0xa5

    const/4 v1, 0x1

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0i(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1O(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A1O(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 14110
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A1P(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 14111
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
