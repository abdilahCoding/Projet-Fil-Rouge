<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit5da11a7f1cfdce40b5dc013c01db7854
{
    public static $prefixLengthsPsr4 = array (
        'P' => 
        array (
            'PHPMailer\\PHPMailer\\' => 20,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'PHPMailer\\PHPMailer\\' => 
        array (
            0 => __DIR__ . '/..' . '/phpmailer/phpmailer/src',
        ),
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit5da11a7f1cfdce40b5dc013c01db7854::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit5da11a7f1cfdce40b5dc013c01db7854::$prefixDirsPsr4;

        }, null, ClassLoader::class);
    }
}
